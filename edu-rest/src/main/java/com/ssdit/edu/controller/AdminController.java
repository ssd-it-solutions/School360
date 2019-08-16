package com.ssdit.edu.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ssdit.edu.dto.EmployeeSalaryDTO;
import com.ssdit.edu.dto.StaffDTO;
import com.ssdit.edu.entity.Divisions;
import com.ssdit.edu.entity.EmployeeMonthSalary;
import com.ssdit.edu.entity.Staff;
import com.ssdit.edu.entity.Standards;
import com.ssdit.edu.repo.StaffRepository;
import com.ssdit.edu.services.AdminService;
import com.ssdit.edu.services.StaffService;
import com.ssdit.edu.services.ViewService;


@Controller
@RequestMapping(value="/admin")
public class AdminController {

	@Autowired
	AdminService adminService;
	
	@Autowired
	StaffService staffService;
	
	@Autowired
	StaffRepository staffRepository;
	
	@Autowired
	ViewService viewService;
	
	
	Logger LOG = LoggerFactory.getLogger(this.getClass());
	
	
	
	@RequestMapping(value="/staff", method=RequestMethod.GET)
	public ModelAndView getListOfStaff() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
		    List<StaffDTO> staffList = adminService.getStaff();
		    modelAndView.setViewName("Admin_UI/Staff");
			modelAndView.addObject("staffList", staffList);
			return modelAndView;	   
	}
	
	@RequestMapping(value="/addStaffForm", method = RequestMethod.GET)
	public ModelAndView getAddStaffForm(@ModelAttribute Staff staff){
		List<Divisions> divisionsList = adminService.getDivision();
	    List<Standards> standardsList = adminService.getStandards();	
		ModelAndView modelAndView = viewService.getModelandViewObject("Admin_UI/addStaffNew","staffDTO",new StaffDTO());;
		modelAndView.addObject("divisionsList", divisionsList);
		modelAndView.addObject("standardsList", standardsList);
	
		return modelAndView;
	}

	@RequestMapping(value="/staff/import", method = RequestMethod.POST)
	public ModelAndView importStaff(@RequestParam("staffFile") MultipartFile staffFile){
		ModelAndView modelAndView = viewService.getModelandViewObject();
		String responseMessage = null;
		boolean responseStatus = false;
		List<StaffDTO> registeredStaffDetails = adminService.importStaff(staffFile);
		if( null!=registeredStaffDetails && !registeredStaffDetails.isEmpty()) {
			responseMessage ="Staff "+ registeredStaffDetails.size() +"inserted successfully";
			responseStatus = true;
		}else {
			responseMessage = "ERROR! ";
		}
		List<StaffDTO> staffList = adminService.getStaff();
		modelAndView.addObject("staffList", staffList);
		modelAndView.setViewName("Admin_UI/Staff");
		return modelAndView;
	}
	
	@RequestMapping(value="/staff", method = RequestMethod.POST)
	public ModelAndView addStaff(@Valid @ModelAttribute("staffDTO")StaffDTO staffDTO,Model model, @RequestParam("photo") MultipartFile photoFile, @RequestParam("adhar_card") MultipartFile adhar_card){
	ModelAndView modelAndView = viewService.getModelandViewObject();
	String responseMessage = null;
	boolean responseStatus = false;
	StaffDTO registeredStaffDetails = adminService.addStaff(staffDTO,photoFile,adhar_card);
	if(registeredStaffDetails != null && registeredStaffDetails.getId()!=0) {
		responseMessage ="Staff record for "+registeredStaffDetails.getFirstName() +" "+registeredStaffDetails.getLastName()+" inserted successfully";
		responseStatus = true;
	}else {
		responseMessage = "ERROR! ";
	}
	model.addAttribute("responseMessage",responseMessage);
	model.addAttribute("responseStatus",responseStatus);
	List<StaffDTO> staffList = adminService.getStaff();
	modelAndView.addObject("staffList", staffList);
	modelAndView.setViewName("Admin_UI/Staff");
	return modelAndView;
   }
	
	@RequestMapping(value="/staff/{id}", method = RequestMethod.GET)
	public ModelAndView updateStaff(@PathVariable(value ="id") String id) throws NumberFormatException, UnsupportedEncodingException{
		LOG.info("Employee id {}",id);
		StaffDTO staff = adminService.updateStaff(Long.parseLong(id));
		LOG.info("Employee details {}",staff);
		ModelAndView modelAndView = viewService.getModelandViewObject("Admin_UI/updateStaff","staffDTO",new StaffDTO());
		modelAndView.addObject("EmployeeDetails", staff);
		return modelAndView;
		}
	
	@RequestMapping(value="/modifyStaff", method = RequestMethod.POST)
	public ModelAndView updateStaff(@Valid @ModelAttribute("staffDTO")StaffDTO staffDTO,Model model,@RequestParam("photo") MultipartFile photoFile,@RequestParam("adhar_card") MultipartFile adharCardFile) throws IOException{
		LOG.info("StaffDTO {}",staffDTO);
		ModelAndView modelAndView = viewService.getModelandViewObject();
		String responseMessage = null;
		boolean responseStatus = false;

		StaffDTO registeredStaffDetails = adminService.updateStaffInfo(staffDTO,photoFile,adharCardFile);
		if(registeredStaffDetails != null && registeredStaffDetails.getId()!=0) {
			responseMessage ="Student record for "+registeredStaffDetails.getFirstName() +" "+registeredStaffDetails.getLastName()+" inserted successfully";
			responseStatus = true;
		}else {
			responseMessage = "ERROR! ";
		}
		model.addAttribute("responseMessage",responseMessage);
		model.addAttribute("responseStatus",responseStatus);
		List<StaffDTO> staffList = adminService.getStaff();
		modelAndView.addObject("staffList", staffList);
		modelAndView.setViewName("Admin_UI/Staff");
		return modelAndView;
	}
	
	
	@RequestMapping(value="/deleteStaff/{id}", method = RequestMethod.GET)
	public ModelAndView deleteStaffById(@PathVariable(value ="id") String id){
		ModelAndView modelAndView = viewService.getModelandViewObject();
		LOG.info("Employee id {}",id);
		adminService.deleteStaff(Long.parseLong(id));
		List<StaffDTO> staffList = adminService.getStaff();
		modelAndView.setViewName("Admin_UI/Staff");
		modelAndView.addObject("staffList", staffList);
		return modelAndView;
	}
	
	@RequestMapping(value="/viewStaffDetails/{id}", method=RequestMethod.GET)
	   public ModelAndView viewStaffDetails(@PathVariable(value ="id") String id) throws NumberFormatException, UnsupportedEncodingException {
		LOG.info("Employee id {}",id);
		StaffDTO staff = adminService.getStaffDetails(Long.parseLong(id));
		LOG.info("Employee details {}",staff);
		ModelAndView modelAndView = viewService.getModelandViewObject("Admin_UI/viewStaff","staffDTO",new StaffDTO());
		modelAndView.addObject("EmployeeDetails", staff);
		return modelAndView;
	}
	
	@RequestMapping(value="/viewAddSalaryDetails/{id}", method=RequestMethod.GET)
	public ModelAndView viewAddSalaryDetails(@PathVariable(value ="id") String id) throws NumberFormatException, UnsupportedEncodingException {
		   LOG.info("Employee id {}",id);
		   EmployeeSalaryDTO salaryDetails = adminService.getDefaultSalaryDetailsById(Long.parseLong(id));
		   ModelAndView modelAndView = viewService.getModelandViewObject("Admin_UI/addMonthlySalary","employeeSalaryDTO",new EmployeeSalaryDTO());
		   modelAndView.addObject("salaryDetails", salaryDetails);
		   return modelAndView;
	}
	
	@RequestMapping(value="/addMonthlySalary", method = RequestMethod.POST)
	public ModelAndView addMonthlySalaryDetailsForEmployee(@ModelAttribute("employeeSalaryDTO") EmployeeSalaryDTO salaryDTO) {
		EmployeeMonthSalary ems = staffService.saveMonthlySalaryOfStaff(salaryDTO);
		List<EmployeeMonthSalary> emsList = staffService.getMonthlySalaryDetailsOfEmployee(ems.getStaff().getId());
		ModelAndView modelAndView = viewService.getModelandViewObject();
		String  isSalaryGeneratedForCurrentMonth = staffService.checkCurrentMonthSalaryStatusforEmpId(ems.getStaff().getId());
		modelAndView.setViewName("Admin_UI/viewStaffSalary");
		modelAndView.addObject("emsList",emsList);
		modelAndView.addObject("empId",ems.getStaff().getId()+"");
		modelAndView.addObject("empName",ems.getStaff().getFirstName()+" "+ems.getStaff().getLastName());
		modelAndView.addObject("designation",ems.getStaff().getDesignation());
		modelAndView.addObject("isSalaryGenerated",isSalaryGeneratedForCurrentMonth);
		return modelAndView;
	}
	
	@RequestMapping(value="/viewStaffSalaryDetails/{id}", method=RequestMethod.GET)
	   public ModelAndView viewStaffSalaryDetails(@PathVariable(value ="id") String id) throws NumberFormatException, UnsupportedEncodingException {
		LOG.info("Employee id {}",id);
		Staff staffDetails = staffRepository.findById(Long.parseLong(id));
		List<EmployeeMonthSalary> emsList = staffService.getMonthlySalaryDetailsOfEmployee(Long.parseLong(id));
		String  isSalaryGeneratedForCurrentMonth = staffService.checkCurrentMonthSalaryStatusforEmpId(Long.parseLong(id));
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Admin_UI/viewStaffSalary");
		modelAndView.addObject("emsList",emsList);
		modelAndView.addObject("empId",id);
		modelAndView.addObject("isSalaryGenerated",isSalaryGeneratedForCurrentMonth);
		modelAndView.addObject("empName",staffDetails.getFirstName()+" "+staffDetails.getLastName());
		modelAndView.addObject("designation",staffDetails.getDesignation());
		return modelAndView;
   }
	
	@RequestMapping(value="/generateSalary", method=RequestMethod.GET)
		public ModelAndView generateSalary() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
		    List<StaffDTO> staffList = adminService.getStaff();
			modelAndView.setViewName("Admin_UI/generateSalary");
			modelAndView.addObject("staffList", staffList);
			return modelAndView;	   
	}
	
	@RequestMapping(value="/viewSalary/{id}", method=RequestMethod.GET)
	   public ModelAndView viewSalary(@PathVariable(value ="id") String id) throws NumberFormatException, UnsupportedEncodingException {
		LOG.info("Employee id {}",id);
		StaffDTO staff = adminService.getStaffDetails(Long.parseLong(id));
		LOG.info("Employee details {}",staff);
		ModelAndView modelAndView = viewService.getModelandViewObject("Admin_UI/viewSalary","staffDTO",new StaffDTO());
		modelAndView.addObject("EmployeeDetails", staff);
		return modelAndView;
   }
	
	@RequestMapping(value="/primarySchool", method=RequestMethod.GET)
		public ModelAndView primary() {
			ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Admin_UI/primary_school");
			return modelAndView;	   
	}

}