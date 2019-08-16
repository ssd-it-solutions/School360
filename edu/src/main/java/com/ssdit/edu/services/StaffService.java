package com.ssdit.edu.services;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.apache.tomcat.util.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ssdit.edu.dto.EmployeeSalaryDTO;
import com.ssdit.edu.dto.StaffDTO;
import com.ssdit.edu.entity.Divisions;
import com.ssdit.edu.entity.EmployeeMonthSalary;
import com.ssdit.edu.entity.Staff;
import com.ssdit.edu.entity.StaffStandardDivisionLink;
import com.ssdit.edu.entity.Standards;
import com.ssdit.edu.entity.Student;
import com.ssdit.edu.repo.EmployeeMonthSalaryRepository;
import com.ssdit.edu.repo.StaffRepository;
import com.ssdit.edu.repo.StudentRepository;
import com.ssdit.edu.security.model.UserDetailsImplimentation;
import com.ssdit.edu.util.AttchmentsUtils;
import com.ssdit.edu.util.CommonUtils;

@Component
public class StaffService {
	
	
	@Autowired
	private AttchmentsUtils attachmentUtils;

	@Autowired
	private StaffRepository staffRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	EmployeeMonthSalaryRepository emsRepository;
	
	@Autowired
	CommonUtils commonUtils;
	


	private ObjectMapper objectMapper = new ObjectMapper();

	Logger LOG = LoggerFactory.getLogger(StaffService.class);

	public StaffDTO getLogedInUser() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		UserDetailsImplimentation user = ((UserDetailsImplimentation) principal);
		StaffDTO staff = user.getStaff();

		if (null != staff.getPhotoField() && staff.getPhotoField().length > 0) {
			byte[] encodeBase64 = Base64
					.encodeBase64(attachmentUtils.uncompressGZipByteArrayToByteArray(staff.getPhotoField()));
			staff.setPhotoField(encodeBase64);
		}
		 if(null != staff.getAdharCardField() && staff.getAdharCardField().length>0) {
				byte[] encodeBase64 = Base64
						.encodeBase64(attachmentUtils.uncompressGZipByteArrayToByteArray(staff.getPhotoField()));
				staff.setAdharCardField(encodeBase64);
		}

		return staff;
	}

	@Transactional
	public Map<String,List<Student>> getMapOfStudentsForLoggedInUser(StaffDTO loggedInUser) {
		Map<String,List<Student>> mapOfStudent= new HashMap<>();
		Staff s = staffRepository.findById(loggedInUser.getId());
		List<StaffStandardDivisionLink> ssdLinkList = s.getAssignClassDivisionList(); //staffStandardDivisionLinkRepository.getByStaffId(loggedInUser.getId());
		for(StaffStandardDivisionLink ssdLink : ssdLinkList) {
			Divisions div = ssdLink.getDivision();
			Standards std = ssdLink.getStandards();
			List<Student> studentList =  studentRepository.findByAssignClassAndAssignDivision(std.getStandard(),div.getDivision());
			if(null != studentList && !studentList.isEmpty()) {
				mapOfStudent.put(std.getStandard()+" Division ["+div.getDivision()+"]", studentList);
			}
			
		}
		return mapOfStudent;
		
	}
	
	public StaffDTO updateStaffInfo(StaffDTO staffDTO,MultipartFile photoFile,MultipartFile adharCardFile) throws UnsupportedEncodingException {
		Staff staff = objectMapper.convertValue(staffDTO, Staff.class);
		byte[] photoFieldByteArray = Base64.decodeBase64(getStaffDetails(staff.getId()).getPhotoField());
		byte[] adharFieldByteArray = Base64.decodeBase64(getStaffDetails(staff.getId()).getAdharCardField());
		if (photoFieldByteArray != null) {
			staff.setPhotoField(attachmentUtils.compressByteArrayToGZipByteArray(photoFieldByteArray));
		}
		if(adharFieldByteArray != null) {
			staff.setAdharCardField(attachmentUtils.compressByteArrayToGZipByteArray(adharFieldByteArray));
		}

		staff = staffRepository.save(staff);
		StaffDTO registeredStaffDetails = objectMapper.convertValue(staff, StaffDTO.class);
		return registeredStaffDetails;
	}
	
	public StaffDTO getStaffDetails(long id) throws UnsupportedEncodingException {
		Staff staff = staffRepository.findById(id);
		StaffDTO staffDTO = objectMapper.convertValue(staff, StaffDTO.class);
		if(null != staff.getPhotoField() && staff.getPhotoField().length>0) {
			byte[] encodeBase64 = Base64
					.encodeBase64(attachmentUtils.uncompressGZipByteArrayToByteArray(staff.getPhotoField()));
			staffDTO.setPhotoField(encodeBase64);
		}
		 if(null != staff.getAdharCardField() && staff.getAdharCardField().length>0) {
				byte[] encodeBase64 = Base64
						.encodeBase64(attachmentUtils.uncompressGZipByteArrayToByteArray(staff.getAdharCardField()));
				staff.setAdharCardField(encodeBase64);
		}
	
		return staffDTO;
	}
	
	public EmployeeMonthSalary saveMonthlySalaryOfStaff(EmployeeSalaryDTO salaryDTO) {
		EmployeeMonthSalary ems = objectMapper.convertValue(salaryDTO,EmployeeMonthSalary.class);
		Staff staff = staffRepository.findById(Long.parseLong(salaryDTO.getStaffId()));
		ems.setStaff(staff);
		ems.setMonth(commonUtils.getCurrentMonthAndYear());
		return emsRepository.save(ems);
	}
	
	public List<EmployeeMonthSalary> getMonthlySalaryDetailsOfEmployee(Long empId){
		return emsRepository.findAllByStaffIdOrderById(empId);
	}
	
	public String checkCurrentMonthSalaryStatusforEmpId(Long empId) {
		String monthAndYear = commonUtils.getCurrentMonthAndYear();
		EmployeeMonthSalary ems = emsRepository.findByStaffIdAndMonth(empId, monthAndYear);
		if (null != ems) {
			return "true";
		}else {
			return "false";
		}
	}
	
	
}
