package com.ssdit.edu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ssdit.edu.services.ViewService;

@Controller
@RequestMapping(value="/admin")
public class ExamController {

	@Autowired
	ViewService viewService;
	
	@RequestMapping(value="/exams", method=RequestMethod.GET)
	   public ModelAndView viewExams() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Exam_Section/exams");
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/exams/add", method=RequestMethod.GET)
	   public ModelAndView addExams() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Exam_Section/addExam");
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/exams/update", method=RequestMethod.GET)
	   public ModelAndView updateExams() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Exam_Section/updateExam");
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/exams/view", method=RequestMethod.GET)
	   public ModelAndView viewStudentExams() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Exam_Section/viewStudentMarks");
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/exams/viewMarksheet", method=RequestMethod.GET)
	   public ModelAndView viewStudentMarksheet() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Exam_Section/viewStudentMarksheet");
			return modelAndView;		   
	   }
}