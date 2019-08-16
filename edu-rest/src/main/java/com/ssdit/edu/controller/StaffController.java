package com.ssdit.edu.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ssdit.edu.dto.StaffDTO;
import com.ssdit.edu.entity.Student;
import com.ssdit.edu.services.AdminService;
import com.ssdit.edu.services.StaffService;
import com.ssdit.edu.services.ViewService;

@Controller
@RequestMapping(value="/staff")
public class StaffController {

	Logger LOG = LoggerFactory.getLogger(StaffController.class);
	
	@Autowired
	StaffService staffService;
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	ViewService viewService;
	
	
	@RequestMapping(value="/students", method=RequestMethod.GET)
	public ModelAndView getListOfStudent() {
		 ModelAndView modelAndView = viewService.getModelandViewObject();
		 StaffDTO loggedInUser = staffService.getLogedInUser();
		 Map<String,List<Student>> mapOfStudents =  staffService.getMapOfStudentsForLoggedInUser(loggedInUser);
		 modelAndView.setViewName("Staff_UI/students");
		 modelAndView.addObject("mapOfStudents", mapOfStudents);
		 return modelAndView;
	}
	
	@RequestMapping(value="/profile", method=RequestMethod.GET)
	public ModelAndView getProfile() throws UnsupportedEncodingException{
		 StaffDTO loggedInUser = staffService.getLogedInUser();
		 LOG.info("Employee id {}",loggedInUser.getId());
		 staffService.getStaffDetails(loggedInUser.getId());
		 ModelAndView modelAndView = viewService.getModelandViewObject();
		 modelAndView.setViewName("Admin_UI/viewStaff");
		 modelAndView.addObject("EmployeeDetails", loggedInUser);
		 return modelAndView;
	}
	
	@RequestMapping(value="/updateProfile", method=RequestMethod.GET)
	public ModelAndView getProfileUpdate(){
		 StaffDTO loggedInUser = staffService.getLogedInUser();
		 LOG.info("Employee id {}",loggedInUser.getId());
		 ModelAndView modelAndView = viewService.getModelandViewObject("Admin_UI/updateProfile","staffDTO",new StaffDTO());
		 modelAndView.addObject("EmployeeDetails", loggedInUser);
		 return modelAndView;
	}
	
	@RequestMapping(value="/modifyProfile", method = RequestMethod.POST)
	public ModelAndView updateStaff(@Valid @ModelAttribute("staffDTO")StaffDTO staffDTO,Model model,@RequestParam("photo") MultipartFile photoFile,@RequestParam("adhar_card") MultipartFile adharCardFile) throws UnsupportedEncodingException{
		 StaffDTO loggedInUser = staffService.updateStaffInfo(staffDTO,photoFile,adharCardFile);
		 LOG.info("Employee id {}",loggedInUser.getId());
		
		 ModelAndView modelAndView = viewService.getModelandViewObject("Admin_UI/viewStaff","staffDTO",new StaffDTO());
		 modelAndView.addObject("EmployeeDetails", loggedInUser);
		 return modelAndView;
	}
	
}
