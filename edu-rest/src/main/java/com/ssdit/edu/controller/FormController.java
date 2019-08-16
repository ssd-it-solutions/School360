package com.ssdit.edu.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ssdit.edu.constants.EduConstants;
import com.ssdit.edu.dto.GovDietPlansDTO;
import com.ssdit.edu.dto.MonthlyPurchaseSummaryDTO;
import com.ssdit.edu.dto.PurchaseReportDTO;
import com.ssdit.edu.dto.StaffDTO;
import com.ssdit.edu.dto.StudentDTO;
import com.ssdit.edu.dto.VisitorDTO;
import com.ssdit.edu.entity.EmployeeMonthSalary;
import com.ssdit.edu.entity.Staff;
import com.ssdit.edu.repo.StaffRepository;
import com.ssdit.edu.services.AdminService;
import com.ssdit.edu.services.DietExpenditureService;
import com.ssdit.edu.services.FoodPurchasedInfo;
import com.ssdit.edu.services.StaffService;
import com.ssdit.edu.services.ViewService;

@Controller
@RequestMapping(value="/admin")
public class FormController {
	@Autowired
	AdminService adminService;
	
	@Autowired
	ViewService viewService;
	
	@Autowired
	DietExpenditureService dietExpenditureService;
	
	@Autowired
	FoodPurchasedInfo foodPurchasedInfo;
	
	@Autowired
	StaffRepository staffRepository;
	
	@Autowired
	StaffService staffService; 

	
	
	Logger LOG = LoggerFactory.getLogger(this.getClass());
	
	/************ Form No:05 **********/
	@RequestMapping(value="/visitorList", method=RequestMethod.GET)
	public ModelAndView visitorList() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		List<VisitorDTO> visitorList = adminService.getVisitor();
		modelAndView.setViewName("Forms_Section/viewForm05");
		modelAndView.addObject("visitorList", visitorList);
		return modelAndView;	
	}
	
	
/************ Hostel Average Attendance Form No:06    **********/
	
	@RequestMapping(value="/hostelAvgAttendance", method=RequestMethod.GET)
		public  ModelAndView viewAttendance() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/HostelAttenAverage");
		return modelAndView;
	}
	
	@RequestMapping(value="/hostelAvgAttendance/add", method=RequestMethod.GET)
		public  ModelAndView addAttendance() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/addHostelAttenAverage");
		return modelAndView;
	}
	
	@RequestMapping(value="/hostelAvgAttendance/update", method=RequestMethod.GET)
		public  ModelAndView updateAttendance() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/updateHostelAttenAverage");
		return modelAndView;
	}
	
	@RequestMapping(value="/hostelAvgAttendance/view", method=RequestMethod.GET)
		public  ModelAndView viewHostelAvgAttendance() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/viewForm06");
		return modelAndView;
	}
	
    /**********     Residence Student Average Form No:07     *************/
	
	@RequestMapping(value="/residenceStudAvg", method=RequestMethod.GET)
		public  ModelAndView viewResidenceStudAvg() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/residenceStudentsAvg");
		return modelAndView;
	}
	
	
	@RequestMapping(value="/residenceStudAvg/add", method=RequestMethod.GET)
		public  ModelAndView addResidenceStudAvg() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/addresidenceStudentsAvg");
		return modelAndView;
	}
	
	@RequestMapping(value="/residenceStudAvg/update", method=RequestMethod.GET)
		public  ModelAndView updateResidenceStudAvg() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/updateresidenceStudentsAverage");
		return modelAndView;
	}
	
	@RequestMapping(value="/residenceStudAvg/view", method=RequestMethod.GET)
		public  ModelAndView viewResidenceStudAvgAttendance() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/viewForm07");
		return modelAndView;
	}

	
      /*********  Staff Recognition List Form No:08     ****************/
	
	@RequestMapping(value="/staffRecognitionList", method=RequestMethod.GET)
		public  ModelAndView viewStaffRecognitionList() {
		List<StaffDTO> listOfStaff = adminService.getStaffIByType(EduConstants.CATEGORY_SCHOOL);
		LOG.info("School Details: {}",listOfStaff);
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/viewForm08");
		modelAndView.addObject("listOfStaff", listOfStaff);
		return modelAndView;
	}
	
	/********** Staff Salary List Form No:09        *****************/
	
	@RequestMapping(value="/staffSalaryDetails/{id}", method=RequestMethod.GET)
	public ModelAndView viewForm9(@PathVariable(value = "id") String id) {
		LOG.info("Employee id {}", id);
		Staff staffDetails = staffRepository.findById(Long.parseLong(id));
		List<EmployeeMonthSalary> emsList = staffService.getMonthlySalaryDetailsOfEmployee(Long.parseLong(id));
		String isSalaryGeneratedForCurrentMonth = staffService
				.checkCurrentMonthSalaryStatusforEmpId(Long.parseLong(id));
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/viewForm09");
		modelAndView.addObject("emsList", emsList);
		modelAndView.addObject("empId", id);
		modelAndView.addObject("isSalaryGenerated", isSalaryGeneratedForCurrentMonth);
		modelAndView.addObject("empName", staffDetails.getFirstName() + " " + staffDetails.getLastName());
		modelAndView.addObject("designation", staffDetails.getDesignation());
		return modelAndView;
	}
	
	@RequestMapping(value="/staffSalaryList", method=RequestMethod.GET)
		public  ModelAndView viewStaffSalaryList() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/StaffSalaryList");
		return modelAndView;
	}
	
	
	
	/********** Salary List Form No:10        *****************/
	@RequestMapping(value="/salaryListOfAllEmployees", method=RequestMethod.GET)
		public  ModelAndView viewSalaryList() {
		List<StaffDTO> staffDTOList =  adminService.getStaff();
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/salaryList");
		modelAndView.addObject("staffDTOList", staffDTOList);
		return modelAndView;
}
	
	/************* Form No:11    **********************/
	@RequestMapping(value="/viewSchoolStaffSalaryDetails", method=RequestMethod.GET)
	public  ModelAndView viewSchoolStaffSalaryDetails() {
	List<StaffDTO> staffDTOList =  adminService.getStaff();
	ModelAndView modelAndView = viewService.getModelandViewObject();
	modelAndView.setViewName("Forms_Section/viewForm11");
	modelAndView.addObject("staffDTOList", staffDTOList);
	return modelAndView;
}
	
	/************* Form No:12    **********************/
	@RequestMapping(value="/viewform12Details", method=RequestMethod.GET)
	public ModelAndView viewform12Details() {
		List<PurchaseReportDTO> listOfPurchasedItem = adminService.getInventoryPurchaseByCategoryAndType(
				EduConstants.CATEGORY_SCHOOL, EduConstants.INVENTORY_ITEM_TYPE_NONEATABLE);
		LOG.info("School Details: {}", listOfPurchasedItem);

		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/viewForm12");
		modelAndView.addObject("listOfPurchasedItem", listOfPurchasedItem);
		return modelAndView;

	}
	
	/************* Form No:13    **********************/
	@RequestMapping(value="/viewStockDetails", method=RequestMethod.GET)
	public  ModelAndView viewStockDetails() {
		List<GovDietPlansDTO> listOfGovItem = adminService.getGovDietPlan();
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.addObject("listOfGovItem",listOfGovItem);	
		modelAndView.setViewName("Forms_Section/viewForm13");
		return modelAndView;
}
	
	/************* Form No:14    **********************/
	
	@RequestMapping(value="/viewHostelStaffDetails", method=RequestMethod.GET)
	public  ModelAndView viewHostelStaffDetails() {
		List<StaffDTO> listOfStaff = adminService.getStaffIByType(EduConstants.CATEGORY_HOSTEL);
		LOG.info("Hostel",listOfStaff);
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/viewForm14");
		modelAndView.addObject("listOfStaff", listOfStaff);
		return modelAndView;
}
	
	/************* Form No:15    **********************/
	@RequestMapping(value="/viewHostelSalaryDetails", method=RequestMethod.GET)
	public  ModelAndView viewHostelSalaryDetails() {
	ModelAndView modelAndView = viewService.getModelandViewObject();
	modelAndView.setViewName("Forms_Section/viewForm15");
	return modelAndView;
}
	
	/************* Form No:16    **********************/
	@RequestMapping(value="/viewEmployeePayScaleDetails", method=RequestMethod.GET)
	public  ModelAndView viewEmployeePayScaleDetails() {
	ModelAndView modelAndView = viewService.getModelandViewObject();
	modelAndView.setViewName("Forms_Section/viewForm16");
	return modelAndView;
}
	
	/************* Form No:17    **********************/
	@RequestMapping(value="/viewPayScaleDetails", method=RequestMethod.GET)
	public  ModelAndView viewPayScaleDetails() {
	ModelAndView modelAndView = viewService.getModelandViewObject();
	modelAndView.setViewName("Forms_Section/viewForm17");
	return modelAndView;
}
	
	/************* Form No:18    **********************/
	@RequestMapping(value="/viewform18Details", method=RequestMethod.GET)
	public  ModelAndView viewform18Details() {
	List<PurchaseReportDTO> listOfPurchasedItem = adminService.getInventoryPurchaseByCategoryAndType(EduConstants.CATEGORY_HOSTEL,EduConstants.INVENTORY_ITEM_TYPE_NONEATABLE);
	LOG.info("Hostel Details: {}",listOfPurchasedItem);
	ModelAndView modelAndView = viewService.getModelandViewObject();
	modelAndView.setViewName("Forms_Section/viewForm18");
	modelAndView.addObject("listOfPurchasedItem",listOfPurchasedItem);
	return modelAndView;
	
}
	/************* Form No:19    **********************/
	@RequestMapping(value="/viewform19Details", method=RequestMethod.GET)
	public  ModelAndView viewform19Details() {
	List<PurchaseReportDTO> listOfPurchasedItem = adminService.getInventoryPurchaseByCategoryAndType(EduConstants.CATEGORY_HOSTEL,EduConstants.INVENTORY_ITEM_TYPE_EATABLE);
	LOG.info("Hostel Details: {}",listOfPurchasedItem);
	ModelAndView modelAndView = viewService.getModelandViewObject();
	modelAndView.setViewName("Forms_Section/viewForm19");
	modelAndView.addObject("listOfPurchasedItem",listOfPurchasedItem);
	return modelAndView;
	
}
	/********** Form No:20        *******************/
	@RequestMapping(value="/listViewForm", method=RequestMethod.GET)
	public  ModelAndView listViewForm() {
	ModelAndView modelAndView = viewService.getModelandViewObject();
	modelAndView.setViewName("Forms_Section/viewForm20");
	return modelAndView;
}
	
	/************* Form No:21    **********************/
	@RequestMapping(value="/viewStudentAttendance", method=RequestMethod.GET)
	public  ModelAndView viewStudentAttendance() {
	ModelAndView modelAndView = viewService.getModelandViewObject();
	modelAndView.setViewName("Forms_Section/viewForm21");
	return modelAndView;
}
	
	/************* Form No:22    **********************/
	/*@RequestMapping(value="/viewFoodExpenseDetails", method=RequestMethod.GET)
	public  ModelAndView viewFoodExpenseDetails() {
	ModelAndView modelAndView = viewService.getModelandViewObject();
	modelAndView.setViewName("Forms_Section/viewForm22");
	return modelAndView;
	}*/
	@RequestMapping(value="/viewFoodExpenseDetails", method=RequestMethod.GET)
	  public ModelAndView viewFoodExpenseDetails() 
	{
ModelAndView modelAndView = viewService.getModelandViewObject();
		
		Map<String,Double> totalPrice=new LinkedHashMap<>();
		double totalStud=0;
		
		Map<String, Map<String, Double>> dietExpenditureMap1to5 = dietExpenditureService.getFoodExpenses("1 to 5" , totalPrice);
		
		Map<String, Double> map1 = dietExpenditureMap1to5.get("TotalStudents");
		dietExpenditureMap1to5.remove("TotalStudents");
		double totalStudent1to5 = map1.get("TotalStudents");
		
		Map<String, Map<String, Double>> dietExpenditureMap6to8 = dietExpenditureService.getFoodExpenses("6 to 8" ,  totalPrice);
		Map<String, Double> map2 = dietExpenditureMap6to8.get("TotalStudents");
		dietExpenditureMap6to8.remove("TotalStudents");
		double totalStudent6to8 = map2.get("TotalStudents");
		
		Map<String, Map<String, Double>> dietExpenditureMap9to12 = dietExpenditureService.getFoodExpenses("9 to 12", totalPrice);
		
		Map<String, Double> map3 = dietExpenditureMap9to12.get("TotalStudents");
		dietExpenditureMap9to12.remove("TotalStudents");
		double totalStudent9to12 = map3.get("TotalStudents");
		
		modelAndView.addObject("dietExpenditureMap1to5", dietExpenditureMap1to5); 
		modelAndView.addObject("dietExpenditureMap6to8", dietExpenditureMap6to8); 
		modelAndView.addObject("dietExpenditureMap9to12", dietExpenditureMap9to12);
		modelAndView.addObject("totalStudent1to5", totalStudent1to5); 
		modelAndView.addObject("totalStudent6to8", totalStudent6to8);
		modelAndView.addObject("totalStudent9to12", totalStudent9to12);
		modelAndView.addObject("totalPrice", totalPrice); 
		
		modelAndView.setViewName("Forms_Section/viewForm22");
		return modelAndView;
	}
	
	/************* Form No:23    **********************/
	@RequestMapping(value="/viewBalanceStockDetails", method=RequestMethod.GET)
	public  ModelAndView viewBalanceStockDetails() {
	ModelAndView modelAndView = viewService.getModelandViewObject();
	modelAndView.setViewName("Forms_Section/viewForm23");
	return modelAndView;
	}
	/************* Form No:23A    **********************/
	@RequestMapping(value="/viewLastDonation", method=RequestMethod.GET)
	public  ModelAndView viewLastDonation() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		Map<String, Double> totalPurchaseByMonth = new LinkedHashMap<>();
		Map<String,Double> totalPurchaseByItem = new LinkedHashMap<>();
		Map<String,Integer> totalPurchaseQuanByItem = new LinkedHashMap<>();
		Map<String, List<MonthlyPurchaseSummaryDTO>> foodPurchasedMap = foodPurchasedInfo.getFoodPurchaseInfo(totalPurchaseByMonth,totalPurchaseByItem,totalPurchaseQuanByItem);
		modelAndView.addObject("foodPurchasedMap", foodPurchasedMap); 
		modelAndView.addObject("totalPurchaseByMonth", totalPurchaseByMonth); 
		modelAndView.addObject("totalPurchaseByItem", totalPurchaseByItem); 
		modelAndView.addObject("totalPurchaseQuanByItem", totalPurchaseQuanByItem); 
		modelAndView.setViewName("Forms_Section/viewForm23A");
		return modelAndView;
	}
	
	/************* Form No:23B    **********************/
	@RequestMapping(value="/viewBalanceStock", method=RequestMethod.GET)
	public  ModelAndView viewBalanceStock() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/viewForm23B");
		return modelAndView;
	}
	
	/************* Student Adhar Card List   **********************/
	@RequestMapping(value="/studentAdharCardList", method=RequestMethod.GET)
	public  ModelAndView studentAdharCardList() {
	ModelAndView modelAndView = viewService.getModelandViewObject();
	List<StudentDTO> studentList = adminService.getStudent();
	modelAndView.setViewName("Forms_Section/studentAdharCardList");
	modelAndView.addObject("studentList", studentList);
	return modelAndView;
}
}