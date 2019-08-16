package com.ssdit.edu.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.ssdit.edu.config.GlobalProperties;

@Component
public class ViewService {

	@Autowired
	GlobalProperties prop;
	
	public  ModelAndView getModelandViewObject() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("applicationURL",prop.getApplicationUrl());
		return modelAndView;
	}
	
	public  ModelAndView getModelandViewObject(String viewName, String modelName, Object modelObject) {
		ModelAndView	modelAndView = new ModelAndView(viewName,modelName,modelObject);
		modelAndView.addObject("applicationURL",prop.getApplicationUrl());
		return modelAndView;
	}
}
