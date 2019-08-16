package com.ssdit.edu.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ssdit.edu.dto.LoginDTO;
import com.ssdit.edu.dto.SettingDTO;
import com.ssdit.edu.services.AdminService;
import com.ssdit.edu.services.ViewService;


@Controller
@RequestMapping(value="/school360")
public class AuthenticationController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	ViewService viewService;

	Logger LOG = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView getLoginPage(){
		ModelAndView modelAndView = viewService.getModelandViewObject("login","loginDTO",new LoginDTO());
		return modelAndView;
	}
	
	@RequestMapping(value="/login-error", method = RequestMethod.GET)
	public ModelAndView getLoginPageAuthError(){
		ModelAndView modelAndView = viewService.getModelandViewObject("login","loginDTO",new LoginDTO());
		modelAndView.addObject("errorStatus",true);
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView login(){
		List<SettingDTO> registeredDetails=adminService.getSetting();
		ModelAndView modelAndView = viewService.getModelandViewObject("Admin_UI/front_page","settingDTO",new SettingDTO());
		modelAndView.addObject("registeredDetails", registeredDetails);
		return modelAndView;
	}
	
}
