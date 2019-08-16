package com.ssdit.edu.controller;

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

import com.ssdit.edu.dto.StudentDTO;
import com.ssdit.edu.entity.Divisions;
import com.ssdit.edu.entity.Standards;
import com.ssdit.edu.repo.StudentRepository;
import com.ssdit.edu.services.AdminService;
import com.ssdit.edu.services.ViewService;

@Controller
@RequestMapping(value="/admin")
public class StudentController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	StudentRepository studentRepository;
	
	@Autowired
	ViewService viewService;
	
	
	Logger LOG = LoggerFactory.getLogger(this.getClass());
	
	
		@RequestMapping(value="/students", method=RequestMethod.GET)
		   public ModelAndView viewStudentList() {
			    ModelAndView modelAndView = viewService.getModelandViewObject();
			    List<StudentDTO> studentList = adminService.getStudent();
				modelAndView.setViewName("Admin_UI/studentList");
				modelAndView.addObject("studentList", studentList);
				return modelAndView;
			   
		   }

		@RequestMapping(value="/students/import", method = RequestMethod.POST)
		public ModelAndView importStudent(@RequestParam("studentFile") MultipartFile studentFile){
			ModelAndView modelAndView = viewService.getModelandViewObject();
			String responseMessage = null;
			boolean responseStatus = false;
			List<StudentDTO> registeredStudentDetails = adminService.importStudent(studentFile);
			if( null!=registeredStudentDetails && !registeredStudentDetails.isEmpty()) {
				responseMessage ="Staff "+ registeredStudentDetails.size() +"inserted successfully";
				responseStatus = true;
			}else {
				responseMessage = "ERROR! ";
			}
			List<StudentDTO> studentList = adminService.getStudent();
			modelAndView.addObject("studentList", studentList);
			modelAndView.setViewName("Admin_UI/studentList");
			return modelAndView;
		}
		
		@RequestMapping(value="/students/add", method=RequestMethod.GET)
			public ModelAndView addStudentInfo() {
				List<Divisions> divisionsList = adminService.getDivision();
				List<Standards> standardsList = adminService.getStandards();	
				ModelAndView modelAndView = viewService.getModelandViewObject("Admin_UI/addStudent","studentDTO",new StudentDTO());
				modelAndView.addObject("divisionsList", divisionsList);
				modelAndView.addObject("standardsList", standardsList);
		    	return modelAndView;
			}
		
		@RequestMapping(value="/addStudent", method = RequestMethod.POST)
		public ModelAndView addStudentDetails(@Valid @ModelAttribute("studentDTO")StudentDTO studentDTO,Model model, @RequestParam("photo") MultipartFile photoFile,@RequestParam("adhar_card") MultipartFile adharCardFile,@RequestParam("birth_certificate") MultipartFile birthCertificateFile,@RequestParam("previous_schoollc") MultipartFile previousSchoolLCFile){
			ModelAndView modelAndView = viewService.getModelandViewObject();
			StudentDTO registeredStudentDetails = adminService.addStudent(studentDTO,photoFile,adharCardFile,birthCertificateFile,previousSchoolLCFile);
			List<StudentDTO> studentList = adminService.getStudent();
			modelAndView.addObject("studentList", studentList);
			modelAndView.setViewName("Admin_UI/studentList");
			return modelAndView;
			
		}
		
		
		@RequestMapping(value="/updateStudent/{id}", method=RequestMethod.GET)
		public ModelAndView updateStudent(@PathVariable(value ="id") String id)  throws NumberFormatException, UnsupportedEncodingException{
			LOG.info("Student id {}",id);
			StudentDTO student = adminService.updateStudent(Long.parseLong(id));
			LOG.info("Student details {}",student);
			ModelAndView modelAndView = viewService.getModelandViewObject("Admin_UI/updateStudent","studentDTO",new StudentDTO());
			modelAndView.addObject("StudentDetails", student);
	    	return modelAndView;
		}
				
		@RequestMapping(value="/modifyStudent", method = RequestMethod.POST)
		public ModelAndView updateStudentDetails(@Valid @ModelAttribute("studentDTO")StudentDTO studentDTO,Model model, @RequestParam("photo") MultipartFile photoFile,@RequestParam("adhar_card") MultipartFile adharCardFile,@RequestParam("birth_certificate") MultipartFile birthCertificateFile,@RequestParam("previous_schoollc") MultipartFile previousSchoolLCFile) throws UnsupportedEncodingException{
			LOG.info("StudentDTO {}",studentDTO);
			ModelAndView modelAndView = viewService.getModelandViewObject();
			String responseMessage = null;
			boolean responseStatus = false;

			StudentDTO registeredStudentDetails = adminService.updateStudentInfo(studentDTO,photoFile,adharCardFile,birthCertificateFile,previousSchoolLCFile);
			if(registeredStudentDetails != null && registeredStudentDetails.getId()!=0) {
				responseMessage ="Student record for "+registeredStudentDetails.getFirstName() +" "+registeredStudentDetails.getLastName()+" inserted successfully";
				responseStatus = true;
			}else {
				responseMessage = "ERROR! ";
			}
			model.addAttribute("responseMessage",responseMessage);
			model.addAttribute("responseStatus",responseStatus);
			List<StudentDTO> studentList = adminService.getStudent();
			modelAndView.addObject("studentList",studentList);
			modelAndView.setViewName("Admin_UI/studentList");
			return modelAndView;
		}

		@RequestMapping(value="/deleteStudent/{id}", method = RequestMethod.GET)
		public ModelAndView load2(@PathVariable(value ="id") String id){
			ModelAndView modelAndView = viewService.getModelandViewObject();
			LOG.info("Student id {}",id);
			adminService.deleteStudent(Long.parseLong(id));
			List<StudentDTO> studentList = adminService.getStudent();
			
			modelAndView.addObject("studentList", studentList);
			modelAndView.setViewName("Admin_UI/studentList");
			return modelAndView;
		}
		
		@RequestMapping(value="/view/{id}", method=RequestMethod.GET)
		   public ModelAndView viewStudentDetails(@PathVariable(value ="id") String id) throws NumberFormatException, UnsupportedEncodingException{
			LOG.info("Student id {}",id);
			StudentDTO student = adminService.viewStudentDetails(Long.parseLong(id));
			LOG.info("Student details {}",student);
			ModelAndView modelAndView = viewService.getModelandViewObject("Admin_UI/viewStudent","studentDTO",new StudentDTO());
			modelAndView.addObject("StudentDetails", student);
			return modelAndView;
			   
		   }
		
}
