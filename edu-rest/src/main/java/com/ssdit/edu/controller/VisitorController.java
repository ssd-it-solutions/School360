package com.ssdit.edu.controller;

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
import org.springframework.web.servlet.ModelAndView;

import com.ssdit.edu.dto.VisitorDTO;
import com.ssdit.edu.repo.VisitorRepository;
import com.ssdit.edu.services.AdminService;
import com.ssdit.edu.services.ViewService;

@Controller
@RequestMapping(value="/admin")
public class VisitorController {
	
	@Autowired
	AdminService adminService;

	@Autowired
	VisitorRepository visitorRepository;
	
	@Autowired
	ViewService viewService;
	
	
	Logger LOG = LoggerFactory.getLogger(this.getClass());
	
	
	@RequestMapping(value="/visitor", method=RequestMethod.GET)
		public ModelAndView visitorList() {
			ModelAndView modelAndView = viewService.getModelandViewObject();
			List<VisitorDTO> visitorList = adminService.getVisitor();
			modelAndView.setViewName("Visitor_Section/visitor");
			modelAndView.addObject("visitorList", visitorList);
			return modelAndView;	
		}

	@RequestMapping(value="/visitor/add", method=RequestMethod.GET)
	public ModelAndView addVisitor() {
		ModelAndView modelAndView = viewService.getModelandViewObject("Visitor_Section/addVisitor","visitorDTO",new VisitorDTO());
		return modelAndView;	
	}
	
	@RequestMapping(value="/addVisitor", method = RequestMethod.POST)
	public ModelAndView addVisitorDetails(@Valid @ModelAttribute("visitorDTO")VisitorDTO visitorDTO,Model model) {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		VisitorDTO registeredVisitorDetails = adminService.addVisitor(visitorDTO);
		List<VisitorDTO> visitorList = adminService.getVisitor();
		modelAndView.addObject("visitorList", visitorList);
		modelAndView.setViewName("Visitor_Section/visitor");
		return modelAndView;
	}
	
	@RequestMapping(value="/updateVisitor/{id}", method=RequestMethod.GET)
	public ModelAndView updateVisitor(@PathVariable(value ="id") String id) {
		LOG.info("Visitor id {}",id);
		VisitorDTO visitor = adminService.updateVisitor(Long.parseLong(id));
		LOG.info("Visitor details {}",visitor);
		ModelAndView modelAndView = viewService.getModelandViewObject("Visitor_Section/updateVisitor","visitorDTO",new VisitorDTO());
		modelAndView.addObject("VisitorDetails", visitor);
    	return modelAndView;
	}
	
	
	@RequestMapping(value="/modifyVisitor", method = RequestMethod.POST)
	public ModelAndView updateVisitorDetails(@Valid @ModelAttribute("visitorDTO")VisitorDTO visitorDTO){
		LOG.info("VisitorDTO {}",visitorDTO);
		ModelAndView modelAndView = viewService.getModelandViewObject();
		VisitorDTO registeredVisitorDetails = adminService.updateVisitorInfo(visitorDTO);
		List<VisitorDTO> visitorList = adminService.getVisitor();
		modelAndView.addObject("visitorList",visitorList);
		modelAndView.setViewName("Visitor_Section/visitor");
		return modelAndView;
	}
	
	@RequestMapping(value="/deleteVisitor/{id}", method = RequestMethod.GET)
	public ModelAndView load2(@PathVariable(value ="id") String id){
		ModelAndView modelAndView = viewService.getModelandViewObject();
		LOG.info("Visitor id {}",id);
		adminService.deleteVisitor(Long.parseLong(id));
		List<VisitorDTO> visitorList = adminService.getVisitor();		
		modelAndView.setViewName("Visitor_Section/visitor");
		modelAndView.addObject("visitorList", visitorList);
		return modelAndView;
	}
	
	
	
	
}