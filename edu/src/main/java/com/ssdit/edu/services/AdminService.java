package com.ssdit.edu.services;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.apache.tomcat.util.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ssdit.edu.config.GlobalProperties;
import com.ssdit.edu.dto.EmployeeSalaryDTO;
import com.ssdit.edu.dto.GovDietPlansDTO;
import com.ssdit.edu.dto.InventoryPurchaseDTO;
import com.ssdit.edu.dto.PurchaseReportDTO;
import com.ssdit.edu.dto.SettingDTO;
import com.ssdit.edu.dto.StaffDTO;
import com.ssdit.edu.dto.StudentDTO;
import com.ssdit.edu.dto.VisitorDTO;
import com.ssdit.edu.entity.Divisions;
import com.ssdit.edu.entity.InventoryItem;
import com.ssdit.edu.entity.InventoryPurchase;
import com.ssdit.edu.entity.Setting;
import com.ssdit.edu.entity.Staff;
import com.ssdit.edu.entity.StaffStandardDivisionLink;
import com.ssdit.edu.entity.Standards;
import com.ssdit.edu.entity.Student;
import com.ssdit.edu.entity.Vendor;
import com.ssdit.edu.entity.Visitor;
import com.ssdit.edu.repo.DivisionsRepository;
import com.ssdit.edu.repo.GovDietPlansRepo;
import com.ssdit.edu.repo.InventoryItemRepository;
import com.ssdit.edu.repo.InventoryPurchaseRepository;
import com.ssdit.edu.repo.SettingRepository;
import com.ssdit.edu.repo.StaffRepository;
import com.ssdit.edu.repo.StaffStandardDivisionLinkRepository;
import com.ssdit.edu.repo.StandardsRepository;
import com.ssdit.edu.repo.StudentRepository;
import com.ssdit.edu.repo.VendorRepository;
import com.ssdit.edu.repo.VisitorRepository;
import com.ssdit.edu.util.AttchmentsUtils;
import com.ssdit.edu.util.CsvParser;

@Component
public class AdminService {
	@Autowired
	EntityManager entityManager;
	@Autowired
	private StaffRepository staffRepository;
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private VendorRepository vendorRepository;
	@Autowired
	private AttchmentsUtils attachmentUtils;
	@Autowired
	CsvParser csvParser;
	@Autowired
	private VisitorRepository visitorRepository;
	@Autowired
	private SettingRepository settingRepository;
	@Autowired
	private InventoryItemRepository inventoryItemRepository;

	@Autowired
	private DivisionsRepository divisionsRepository;

	@Autowired
	private StandardsRepository standardsRepository;

	@Autowired
	private StaffStandardDivisionLinkRepository ssdRepository;

	@Autowired
	private InventoryPurchaseRepository inventoryPurchaseRepository;
	
	@Autowired
	GlobalProperties prop;
	
	@Autowired
	GovDietPlansRepo govDietPlansRepo;

	private static Logger LOG = LoggerFactory.getLogger(AdminService.class);
	private ObjectMapper objectMapper = new ObjectMapper();
	private final String USER_ROLE = "ROLE_USER";

	public List<StaffDTO> importStaff(MultipartFile staffCSVMultiPart) {
		List<StaffDTO> createdStaff = new ArrayList<>();
		try {
			File staffCSV = new File(
					System.getProperty("java.io.tmpdir") + "/" + staffCSVMultiPart.getOriginalFilename());
			staffCSVMultiPart.transferTo(staffCSV);
			String[] columns = new String[] { "firstName", "middleName", "lastName", "address", "dob", "age",
					"phoneNumber", "emailAddress", "gender", "adharNo", "knownLang", "joiningDate", "qualification",
					"institute", "board", "marks", "totalWorkExperience", "designation", "organizationAddress",
					"achievements", "staffCategory", "joiningPeriod","basicSalary","dearnessAllowance","houseAllowance","incentiveAllowance","totalSalary" };
			List<StaffDTO> listOfStaffDTO = csvParser.parseCSVtoBeanGeneric(StaffDTO.class, staffCSV, columns);
			for (StaffDTO staffDTO : listOfStaffDTO) {
				Staff staff = objectMapper.convertValue(staffDTO, Staff.class);
				staff.setRole(USER_ROLE);
				staff.setUsername(staff.getFirstName());
				staff.setPassword("ssdit123");
				createdStaff.add(objectMapper.convertValue(staffRepository.save(staff), StaffDTO.class));
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return createdStaff;
	}

	public StaffDTO addStaff(StaffDTO staffDTO, MultipartFile photoFile, MultipartFile adharCardFile) {
		try {
			byte[] photoFileByteArray = null, adharCardFileByteArray = null;
			LOG.info("StaffDTO", staffDTO);
			if (photoFile != null && !photoFile.isEmpty()) {
				photoFileByteArray = attachmentUtils.compressByteArrayToGZipByteArray(photoFile.getBytes());
			}
			if (adharCardFile != null && !adharCardFile.isEmpty()) {
				adharCardFileByteArray = attachmentUtils.compressByteArrayToGZipByteArray(adharCardFile.getBytes());
			}
			if (photoFileByteArray != null) {
				staffDTO.setPhotoField(photoFileByteArray);
			}
			if (adharCardFileByteArray != null) {
				staffDTO.setAdharCardField(adharCardFileByteArray);
			}
			Staff staff = objectMapper.convertValue(staffDTO, Staff.class);

			if (null != staffDTO.getAssignClass() && !staffDTO.getAssignClass().isEmpty()
					&& null != staffDTO.getAssignDivision() && !staffDTO.getAssignDivision().isEmpty()) {
				assignClassAndDivisionToStaff(staffDTO.getAssignClass(), staffDTO.getAssignDivision(), staff);
			}
			staff.setJoiningPeriod("12 Months");
			staff.setUsername(staff.getFirstName());
			staff.setRole(USER_ROLE);
			staff.setPassword("ssdit123");
			staff = staffRepository.save(staff);
			return objectMapper.convertValue(staff, StaffDTO.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public void assignClassAndDivisionToStaff(String assignClass, String assignDivision, Staff staff) {
		String assignClassArray[] = assignClass.split(",");
		String assignDivisionArray[] = assignDivision.split(",");
		List<StaffStandardDivisionLink> assignClassDivisionList = new ArrayList<>();
		if (assignClassArray.length == assignDivisionArray.length) {
			for (int i = 0; i < assignClassArray.length; i++) {
				StaffStandardDivisionLink ssdLink = new StaffStandardDivisionLink(staff,
						standardsRepository.findById(Long.parseLong(assignClassArray[i])),
						divisionsRepository.findById(Long.parseLong(assignDivisionArray[i])));
				assignClassDivisionList.add(ssdRepository.save(ssdLink));
				// ssdRepository.save(ssdLink);
			}
			staff.setAssignClassDivisionList(assignClassDivisionList);
		}
	}

	public List<StaffDTO> getStaff() {
		List<Staff> listOfStaff = staffRepository.findAll();
		List<StaffDTO> list = objectMapper.convertValue(listOfStaff, new TypeReference<List<StaffDTO>>() {
		});

		return list;
	}

	public List<Standards> getStandards() {
		List<Standards> listOfStandards = standardsRepository.findAll();
		return listOfStandards;
	}

	public List<Divisions> getDivision() {
		List<Divisions> listOfdivisions = divisionsRepository.findAll();
		return listOfdivisions;
	}

	public void deleteStaff(long id) {
		staffRepository.deleteById(id);
	}

	public StaffDTO updateStaff(long id) throws UnsupportedEncodingException {
		Staff staff = staffRepository.findById(id);
		StaffDTO staffDTO = objectMapper.convertValue(staff, StaffDTO.class);
		if( null != staff.getPhotoField() ) {
			byte[] encodeBase64 = Base64
					.encodeBase64(attachmentUtils.uncompressGZipByteArrayToByteArray(staff.getPhotoField()));
			staffDTO.setPhotoField(encodeBase64);
		}
		return staffDTO;
	}

	public StaffDTO updateStaffInfo(StaffDTO staffDTO, MultipartFile photoFile, MultipartFile adharCardFile)
			throws IOException {
		Staff staff = objectMapper.convertValue(staffDTO, Staff.class);
		staff = setPhotoAndAdharCardToStaff(staff, photoFile, adharCardFile);
		staff = staffRepository.save(staff);
		StaffDTO registeredStaffDetails = objectMapper.convertValue(staff, StaffDTO.class);
		return registeredStaffDetails;
	}

	public Staff setPhotoAndAdharCardToStaff(Staff staff, MultipartFile photoFile, MultipartFile adharCardFile)
			throws IOException {
		if (photoFile != null && !photoFile.isEmpty()) {
			staff.setPhotoField(attachmentUtils.compressByteArrayToGZipByteArray(photoFile.getBytes()));
		} else {
			StaffDTO existingStaffDto = getStaffDetails(staff.getId());
			if (null != existingStaffDto.getPhotoField() && existingStaffDto.getPhotoField().length > 0) {
				byte[] photoFieldByteArray = Base64.decodeBase64(existingStaffDto.getPhotoField());
				staff.setPhotoField(attachmentUtils.compressByteArrayToGZipByteArray(photoFieldByteArray));
			}
		}
		if (adharCardFile != null && !adharCardFile.isEmpty()) {
			staff.setAdharCardField(attachmentUtils.compressByteArrayToGZipByteArray(adharCardFile.getBytes()));
		} else {
			StaffDTO existingStaffDto = getStaffDetails(staff.getId());
			if (null != existingStaffDto.getAdharCardField() && existingStaffDto.getAdharCardField().length > 0) {
				byte[] adharFieldByteArray = Base64.decodeBase64(existingStaffDto.getAdharCardField());
				staff.setAdharCardField(attachmentUtils.compressByteArrayToGZipByteArray(adharFieldByteArray));
			}
		}
		return staff;
	}

	
	public StaffDTO getStaffDetails(long id) throws UnsupportedEncodingException {
		Staff staff = staffRepository.findById(id);
		StaffDTO staffDTO = objectMapper.convertValue(staff, StaffDTO.class);
		if (null != staff.getPhotoField() && staff.getPhotoField().length > 0) {
			byte[] encodeBase64 = Base64
					.encodeBase64(attachmentUtils.uncompressGZipByteArrayToByteArray(staff.getPhotoField()));
			staffDTO.setPhotoField(encodeBase64);
		}
		if (null != staff.getAdharCardField() && staff.getAdharCardField().length > 0) {
			byte[] encodeBase64 = Base64
					.encodeBase64(attachmentUtils.uncompressGZipByteArrayToByteArray(staff.getAdharCardField()));
			staffDTO.setAdharCardField(encodeBase64);
		}

		return staffDTO;
	}
	
	public EmployeeSalaryDTO getDefaultSalaryDetailsById(long id) throws UnsupportedEncodingException {
		Staff staff = staffRepository.findById(id);
		StaffDTO staffDTO = objectMapper.convertValue(staff, StaffDTO.class);
		EmployeeSalaryDTO salaryDTO = new EmployeeSalaryDTO();
		salaryDTO.setBasicSalary(staffDTO.getBasicSalary());
		salaryDTO.setDearnessAllowance(staffDTO.getDearnessAllowance());
		salaryDTO.setHouseRentAllowance(staffDTO.getHouseAllowance());
		salaryDTO.setIncentiveAllowance(staffDTO.getIncentiveAllowance());
		salaryDTO.setTotalSalary(staffDTO.getTotalSalary());
		salaryDTO.setStaffId(staffDTO.getId()+"");
		salaryDTO.setName(staffDTO.getFirstName()+" "+staffDTO.getLastName());
		return salaryDTO;
	}
	
	

	/* For Student Details */

	public List<StudentDTO> importStudent(MultipartFile studentCSVMultiPart) {
		List<StudentDTO> createdStudent = new ArrayList<>();
		try {
			File studentCSV = new File(
					System.getProperty("java.io.tmpdir") + "/" + studentCSVMultiPart.getOriginalFilename());
			studentCSVMultiPart.transferTo(studentCSV);
			String[] columns = new String[] { "academicYear", "registerNumber", "firstName", "middleName", "lastName",
					"gender", "dob", "temporaryAddress", "permanentAddress", "adharNo", "religion", "category", "caste",
					"previousSchoolName", "previousSchoolStd", "assignClass", "assignDivision", "rollNumber",
					"guardianFirstName", "guardianMiddleName", "guardianLastName", "phoneNumber", "address", "country",
					"state", "district", "Tal", "village", "zipCode" };
			List<StudentDTO> listOfStudentDTO = csvParser.parseCSVtoBeanGeneric(StudentDTO.class, studentCSV, columns);
			for (StudentDTO studentDTO : listOfStudentDTO) {
				Student student = objectMapper.convertValue(studentDTO, Student.class);
				createdStudent.add(objectMapper.convertValue(studentRepository.save(student), StudentDTO.class));
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return createdStudent;
	}

	public StudentDTO addStudent(StudentDTO studentDTO, MultipartFile photoFile, MultipartFile adharCardFile,
			MultipartFile birthCertificateFile, MultipartFile previousSchoolLCFile) {
		try {
			byte[] photoByteArray = null, adharCardByteArray = null, birthCertificateByteArray = null,
					previousSchoolLCByteArray = null;

			LOG.info("StudentDTO", studentDTO);
			if (photoFile != null && !photoFile.isEmpty()) {
				photoByteArray = attachmentUtils.compressByteArrayToGZipByteArray(photoFile.getBytes());
			}
			if (adharCardFile != null && !adharCardFile.isEmpty()) {
				adharCardByteArray = attachmentUtils.compressByteArrayToGZipByteArray(adharCardFile.getBytes());
			}
			if (birthCertificateFile != null && !birthCertificateFile.isEmpty()) {
				birthCertificateByteArray = attachmentUtils
						.compressByteArrayToGZipByteArray(birthCertificateFile.getBytes());
			}
			if (previousSchoolLCFile != null && !previousSchoolLCFile.isEmpty()) {
				previousSchoolLCByteArray = attachmentUtils
						.compressByteArrayToGZipByteArray(previousSchoolLCFile.getBytes());
			}
			if (photoByteArray != null) {
				studentDTO.setPhotoField(photoByteArray);
			}
			if (adharCardByteArray != null) {
				studentDTO.setAdharCardField(adharCardByteArray);
			}
			if (birthCertificateByteArray != null) {
				studentDTO.setBirthCertificateField(birthCertificateByteArray);
			}
			if (previousSchoolLCByteArray != null) {
				studentDTO.setPreviousSchoolLCField(previousSchoolLCByteArray);
			}

			Student student = objectMapper.convertValue(studentDTO, Student.class);
			student = studentRepository.save(student);
			LOG.info("{}", student);
			StudentDTO registeredStudentDetails = objectMapper.convertValue(student, StudentDTO.class);
			return registeredStudentDetails;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public StudentDTO updateStudentInfo(StudentDTO studentDTO, MultipartFile photoFile, MultipartFile adharCardFile,
			MultipartFile birthCertificateFile, MultipartFile previousSchoolLCFile)
			throws UnsupportedEncodingException {
		Student student = objectMapper.convertValue(studentDTO, Student.class);
		StudentDTO studentDetails =  getStudentDetails(student.getId());
		
		if (studentDetails.getPhotoField() != null) {
			byte[] photoFieldByteArray = Base64.decodeBase64(studentDetails.getPhotoField());
			student.setPhotoField(attachmentUtils.compressByteArrayToGZipByteArray(photoFieldByteArray));
		}
		if (studentDetails.getAdharCardField() != null) {
			byte[] adharFieldByteArray = Base64.decodeBase64(studentDetails.getAdharCardField());
			student.setAdharCardField(attachmentUtils.compressByteArrayToGZipByteArray(adharFieldByteArray));
		}
		if (studentDetails.getBirthCertificateField() != null) {
			byte[] birthFieldByteArray = Base64.decodeBase64(studentDetails.getBirthCertificateField());
			student.setBirthCertificateField(attachmentUtils.compressByteArrayToGZipByteArray(birthFieldByteArray));
		}
		if (studentDetails.getPreviousSchoolLCField() != null) {
			byte[] schoolFieldByteArray = Base64.decodeBase64(studentDetails.getPreviousSchoolLCField());
			student.setPreviousSchoolLCField(attachmentUtils.compressByteArrayToGZipByteArray(schoolFieldByteArray));
		}

		student = studentRepository.save(student);
		StudentDTO registeredStudentDetails = objectMapper.convertValue(student, StudentDTO.class);
		return registeredStudentDetails;
	}

	public List<StudentDTO> getStudent() {
		List<Student> listOfStudent = studentRepository.findAll();
		return objectMapper.convertValue(listOfStudent, new TypeReference<List<StudentDTO>>() {
		});
	}

	public StudentDTO updateStudent(long id) throws UnsupportedEncodingException {
		Student student = studentRepository.findById(id);
		StudentDTO studentDTO = objectMapper.convertValue(student, StudentDTO.class);
		if(null != student.getPhotoField()) {
			byte[] encodeBase64 = Base64
					.encodeBase64(attachmentUtils.uncompressGZipByteArrayToByteArray(student.getPhotoField()));	
			studentDTO.setPhotoField(encodeBase64);
		}
		return studentDTO;
	}

	public StudentDTO getStudentDetails(long id) throws UnsupportedEncodingException {
		Student student = studentRepository.findById(id);
		StudentDTO studentDTO = objectMapper.convertValue(student, StudentDTO.class);
		if(null != student.getPhotoField()) {
			byte[] encodeBase64 = Base64
					.encodeBase64(attachmentUtils.uncompressGZipByteArrayToByteArray(student.getPhotoField()));
			studentDTO.setPhotoField(encodeBase64);
		}
		return studentDTO;
	}

	public void deleteStudent(long id) {
		studentRepository.deleteById(id);
	}

	public StudentDTO viewStudentDetails(long id) throws UnsupportedEncodingException {
		Student student = studentRepository.findById(id);
		StudentDTO studentDTO = objectMapper.convertValue(student, StudentDTO.class);
		if( null  != student.getPhotoField()) {
			byte[] encodeBase64 = Base64
					.encodeBase64(attachmentUtils.uncompressGZipByteArrayToByteArray(student.getPhotoField()));
			studentDTO.setPhotoField(encodeBase64);
		}
		return studentDTO;
	}

	/* Vendor details */
	public Vendor addVendor(Vendor vendor) {
		LOG.info("vendor {}", vendor);
		vendor = vendorRepository.save(vendor);
		return vendor;
	}

	public List<Vendor> getVendors() {
		List<Vendor> listOfVendors = vendorRepository.findAll();
		return listOfVendors;
	}

	public Map<Long, String> getVendorsNameAndId() {
		Map<Long, String> vendorsMap = new HashMap<>();
		List<Vendor> listOfVendors = getVendors();
		for (Vendor vendor : listOfVendors) {
			vendorsMap.put(vendor.getId(), vendor.getCompanyName());
		}
		return vendorsMap;
	}

	public void deleteVendor(long id) {
		vendorRepository.deleteById(id);
	}

	public Vendor getVendor(long id) {
		return vendorRepository.findById(id);
	}

	/****** For Visitors Details *******/

	public VisitorDTO addVisitor(VisitorDTO visitorDTO) {
		LOG.info("VisitorDTO", visitorDTO);
		Visitor visitor = objectMapper.convertValue(visitorDTO, Visitor.class);
		visitor = visitorRepository.save(visitor);
		LOG.info("{}", visitor);
		VisitorDTO registeredVisitorDetails = objectMapper.convertValue(visitor, VisitorDTO.class);
		return registeredVisitorDetails;

	}

	public List<VisitorDTO> getVisitor() {
		List<Visitor> listOfVisitor = visitorRepository.findAll();
		return objectMapper.convertValue(listOfVisitor, new TypeReference<List<VisitorDTO>>() {
		});
	}

	public VisitorDTO updateVisitor(long id) {
		Visitor visitor = visitorRepository.findById(id);
		return objectMapper.convertValue(visitor, VisitorDTO.class);
	}

	public VisitorDTO updateVisitorInfo(VisitorDTO visitorDTO) {
		Visitor visitor = objectMapper.convertValue(visitorDTO, Visitor.class);
		visitor = visitorRepository.save(visitor);
		VisitorDTO registeredVisitorDetails = objectMapper.convertValue(visitor, VisitorDTO.class);
		return registeredVisitorDetails;
	}

	public void deleteVisitor(long id) {
		visitorRepository.deleteById(id);
	}

	/**** For Setting Details ****/

	public SettingDTO addDetails(SettingDTO settingDTO) {
		LOG.info("SettingDTO", settingDTO);
		Setting setting = objectMapper.convertValue(settingDTO, Setting.class);
		setting = settingRepository.save(setting);
		LOG.info("{}", setting);
		SettingDTO registeredVisitorDetails = objectMapper.convertValue(setting, SettingDTO.class);
		return registeredVisitorDetails;

	}

	public List<SettingDTO> getSetting() {
		List<Setting> listOfSetting = settingRepository.findAll();
		return objectMapper.convertValue(listOfSetting, new TypeReference<List<SettingDTO>>() {
		});
	}

	public SettingDTO updateSetting(long id) {
		Setting setting = settingRepository.findById(id);
		return objectMapper.convertValue(setting, SettingDTO.class);
	}

	public SettingDTO updateSettingInfo(SettingDTO settingDTO) {
		Setting setting = objectMapper.convertValue(settingDTO, Setting.class);
		setting = settingRepository.save(setting);
		SettingDTO registeredSettingDetails = objectMapper.convertValue(setting, SettingDTO.class);
		return registeredSettingDetails;
	}

	public SettingDTO viewSetting(long id) {
		Setting setting = settingRepository.findById(id);
		return objectMapper.convertValue(setting, SettingDTO.class);
	}

	public Map<String, List<InventoryItem>> getInventoryItemByType() {
		List<InventoryItem> itemList = inventoryItemRepository.findItemByType("Eatable");
		Map<String, List<InventoryItem>> inventotyItemByType = new HashMap<>();
		inventotyItemByType.put("Eatable", itemList);
		itemList = inventoryItemRepository.findItemByType("NonEatable");
		inventotyItemByType.put("NonEatable", itemList);
		return inventotyItemByType;
	}

	/** Inventory */
	public InventoryItem getItem(String itemId) {
		if (itemId.contains(",")) {
			String itemIds[] = itemId.split(",");
			for (String id : itemIds) {
				if (!id.equalsIgnoreCase("None")) {
					itemId = id;
					break;
				}

			}
		}
		return inventoryItemRepository.findById(Long.parseLong(itemId));
	}

	private String monthYearFormat(String date)
	{
		Map<String,String> months = new HashMap<>();
		months.put("01","Jan");
		months.put("02","Feb");
		months.put("03","March");
		months.put("04","April");
		months.put("05","May");
		months.put("06","June");
		months.put("07","July");
		months.put("08","Aug");
		months.put("09","Sept");
		months.put("10","Oct");
		months.put("11","Nov");
		months.put("12","Dec");

		//String date = "2019-01-22";
		String dateArray [] = date.split("-");
		System.out.println(months.get(dateArray[1])+" - "+dateArray[0]);
		
		return months.get(dateArray[1])+" - "+dateArray[0];
	}
	
	
	public InventoryPurchase addPurchaseDetails(InventoryPurchaseDTO inventoryPurchaseDTO) {InventoryPurchase inventoryPurchase = objectMapper.convertValue(inventoryPurchaseDTO, InventoryPurchase.class);
	Vendor vendor = getVendor(Long.parseLong(inventoryPurchaseDTO.getVendor()));
	inventoryPurchase.setVendor(vendor);
	InventoryItem item = getItem(inventoryPurchaseDTO.getItem());
	inventoryPurchase.setItem(item);
	inventoryPurchase.setMonthYear(monthYearFormat(inventoryPurchase.getPurchaseDate()));		
	InventoryPurchase purchasedItem = inventoryPurchaseRepository.save(inventoryPurchase);
	return purchasedItem;
	}

	public List<InventoryPurchase> getInventoryItems() {
		return inventoryPurchaseRepository.findAll();
	}

	public List<InventoryPurchase> getInventoryItemsByType(String category) {
		return inventoryPurchaseRepository.findByCategory(category);
	}

	/*public List<InventoryPurchase> getInventoryPurchaseByCategoryAndType(String category, String type) {
		Query q = entityManager.createNativeQuery(
				"SELECT inventory_purchase.* FROM inventory_purchase,inventory_item where category=? and inventory_purchase.item_id = inventory_item.id and inventory_item.type=?",
				InventoryPurchase.class);
		q.setParameter(1, category);
		q.setParameter(2, type);
		return q.getResultList();

	}*/
	
	public List<PurchaseReportDTO> getInventoryPurchaseByCategoryAndType(String category, String type) {

		List<PurchaseReportDTO> purchaseReportDTOList = new ArrayList<>();
		Query query = entityManager
				.createNativeQuery("select sum(i.paid_amount) as totalCost,sum(i.approved_cost) as totalApprovedCost "
						+ ",sum(i.non_approved_cost) as totalNonapprovedCost  ,i.item_id  as itemId "
						+ "from inventory_purchase as i ," + "inventory_item as inv "
						+ "where i.purchase_date between ? and ? and i.item_id=inv.id and i.category=? and inv.type=? "
						+ "GROUP BY   i.item_id	");

		query.setParameter(1, prop.getStartDate());
		query.setParameter(2, prop.getEndDate());
		query.setParameter(3, category);
		query.setParameter(4, type);

		List<Object[]> resultObjerctList = query.getResultList();

		if (null != resultObjerctList) {
			for (Object[] resultObject : resultObjerctList) {
				long itemId = Long.parseLong(resultObject[3].toString());
				InventoryItem item = inventoryItemRepository.findById(itemId);
				String itemName = "NA";
				if (null != item) {
					itemName = item.getItem();
				}
				double totalCost = Double.parseDouble(resultObject[0].toString());
				double totalApprovedCost = Double.parseDouble(resultObject[1].toString());
				double totalNonapprovedCost = Double.parseDouble(resultObject[2].toString());
				purchaseReportDTOList.add(new PurchaseReportDTO(itemId, totalCost, totalApprovedCost,
						totalNonapprovedCost, " Not Applicable", itemName));

			}
		} else {
			// TODO Throw Exception
		}

		return purchaseReportDTOList;

	}

	public List<StaffDTO> getStaffIByType(String category) {
		List<Staff> listOfStaff = staffRepository.findByStaffCategory(category);
		return objectMapper.convertValue(listOfStaff, new TypeReference<List<StaffDTO>>() {
		});
	}

	public List<GovDietPlansDTO> getGovDietPlan() {
		List<GovDietPlansDTO> govDTOList = new ArrayList<>();
		Query query = entityManager.createNativeQuery("SELECT eatable_type , "
				+ "STRING_AGG(eatable_items, ', ') AS eatableItems ,first_to_five,six_to_eight,nine_to_twelve FROM gov_diet_plans GROUP BY eatable_type ,first_to_five,six_to_eight,nine_to_twelve;");
		@SuppressWarnings("unchecked")
		List<Object[]> resultObjerctList = query.getResultList();
		if (null != resultObjerctList) {
			for (Object[] resultObject : resultObjerctList) {
				String eatableType = resultObject[0].toString();
				String eatableItems = resultObject[1].toString();
				double firstToFive = Double.parseDouble(resultObject[2].toString());
				double sixToEight = Double.parseDouble(resultObject[3].toString());
				double nineToTwelve = Double.parseDouble(resultObject[4].toString());
				govDTOList.add(new GovDietPlansDTO(eatableType, eatableItems, firstToFive, sixToEight, nineToTwelve));
			}
		} else {
			//:TODO throw exception
		}
		return govDTOList;

	}

}
