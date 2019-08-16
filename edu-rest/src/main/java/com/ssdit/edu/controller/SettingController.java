package com.ssdit.edu.controller;

import java.util.List;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ssdit.edu.dto.SettingDTO;
import com.ssdit.edu.repo.SettingRepository;
import com.ssdit.edu.services.AdminService;
import com.ssdit.edu.services.ViewService;

@Controller
@RequestMapping(value="/admin")
public class SettingController {
	@Autowired
	AdminService adminService;
	
	@Autowired
	ViewService viewService;
	
	
	SettingRepository settingRepository;
	
	Logger LOG = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping(value="/settings", method=RequestMethod.GET)
	   public ModelAndView settings() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
		    List<SettingDTO> settingList = adminService.getSetting();
			modelAndView.setViewName("Settings_Section/institutionDetails");
			modelAndView.addObject("settingList", settingList);
			return modelAndView;		   
	   }
	
	
	@RequestMapping(value="/updateSetting/{id}", method=RequestMethod.GET)
	   public ModelAndView updateSettings(@PathVariable(value ="id") String id) {
			LOG.info("Setting id {}",id);	
			SettingDTO setting = adminService.updateSetting(Long.parseLong(id));
			LOG.info("Setting details {}",setting);
		    ModelAndView modelAndView = viewService.getModelandViewObject("Settings_Section/updateInstitutionDetails","settingDTO", new SettingDTO());
		    modelAndView.addObject("SettingDetails", setting);
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/modifySetting", method = RequestMethod.POST)
	public ModelAndView updateSettingDetails(@Valid @ModelAttribute("settingDTO")SettingDTO settingDTO){
		LOG.info("SettingDTO {}",settingDTO);
		SettingDTO registeredSettingDetails = adminService.updateSettingInfo(settingDTO);
		List<SettingDTO> settingList = adminService.getSetting();
		/*ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.addObject("settingList",settingList);
		modelAndView.setViewName("Settings_Section/institutionDetails");*/
		
		ModelAndView modelAndView = viewService.getModelandViewObject("Admin_UI/front_page","settingDTO",new SettingDTO());
		modelAndView.addObject("registeredDetails", settingList);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/viewSettingDetails/{id}", method=RequestMethod.GET)
	   public ModelAndView viewSettingDetails(@PathVariable(value ="id") String id)  {
		LOG.info("Setting id {}",id);
		SettingDTO setting = adminService.viewSetting(Long.parseLong(id));
		LOG.info("Setting details {}",setting);
		ModelAndView modelAndView = viewService.getModelandViewObject("Settings_Section/front_page","settingDTO",new SettingDTO());
		modelAndView.addObject("SettingDetails", setting);
		return modelAndView;
		   
	   }
}