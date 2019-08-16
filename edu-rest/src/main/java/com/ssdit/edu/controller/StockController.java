package com.ssdit.edu.controller;

import java.util.List;
import java.util.Map;

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

import com.ssdit.edu.dto.InventoryPurchaseDTO;
import com.ssdit.edu.entity.InventoryItem;
import com.ssdit.edu.entity.InventoryPurchase;
import com.ssdit.edu.entity.Vendor;
import com.ssdit.edu.services.AdminService;
import com.ssdit.edu.services.ViewService;


@Controller
@RequestMapping(value="/admin")
public class StockController {

	@Autowired
	AdminService adminService;
	
	@Autowired
	ViewService viewService;
	
	
	Logger LOG = LoggerFactory.getLogger(this.getClass());
	
	/******** Vendor ********/
	
	@RequestMapping(value="/vendors", method=RequestMethod.GET)
	   public ModelAndView viewVendors() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
		    List<Vendor> vendorsList = adminService.getVendors();
		    modelAndView.addObject("vendorsList", vendorsList);
			modelAndView.setViewName("Stock_Section/vendor");
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/vendors/add", method=RequestMethod.GET)
	   public ModelAndView addVendorUI() {
		    ModelAndView modelAndView = viewService.getModelandViewObject("Stock_Section/addVendor","vendorDTO",new Vendor());
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/vendors/add", method=RequestMethod.POST)
	public ModelAndView addVendor(@Valid @ModelAttribute("vendorDTO") Vendor vendorDTO, Model model) {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		String responseMessage = null;
		boolean responseStatus = false;
		Vendor registeredVendor = adminService.addVendor(vendorDTO);
		if (registeredVendor != null && registeredVendor.getId() != 0) {
			responseMessage = "Vendor record for " + registeredVendor.getCompanyName() + " "
					+ " inserted successfully";
			responseStatus = true;
		} else {
			responseMessage = "Error!";
		}
		model.addAttribute("responseMessage",responseMessage);
		model.addAttribute("responseStatus",responseStatus);
		List<Vendor> vendorsList= adminService.getVendors();
		modelAndView.addObject("vendorsList", vendorsList);
		modelAndView.setViewName("Stock_Section/vendor");
		return modelAndView;
	}
	
	@RequestMapping(value="/deleteVendor/{id}", method = RequestMethod.GET)
	public ModelAndView deleteVendor(@PathVariable(value ="id") String id){
		ModelAndView modelAndView = viewService.getModelandViewObject();
		LOG.info("Vendor id {}",id);
		adminService.deleteVendor(Long.parseLong(id));
		List<Vendor> vendorsList = adminService.getVendors();
		modelAndView.setViewName("Stock_Section/vendor");
		modelAndView.addObject("vendorsList", vendorsList);
		return modelAndView;
		
		
	}
	
	@RequestMapping(value="/vendors/update/{id}", method=RequestMethod.GET)
	   public ModelAndView updateVendorUI(@PathVariable(value ="id") String id) {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
		    Vendor vendor = adminService.getVendor(Long.parseLong(id));
		    modelAndView.addObject("vendorDTO", vendor);
			modelAndView.setViewName("Stock_Section/updateVendor");
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/vendors/update", method=RequestMethod.POST)
	   public ModelAndView updateVendor(@Valid @ModelAttribute("vendorDTO") Vendor vendorDTO, Model model) {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
		   
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/vendors/view/{id}", method=RequestMethod.GET)
	   public ModelAndView viewVendorDetails(@PathVariable(value ="id") String id) {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
		    Vendor vendor = adminService.getVendor(Long.parseLong(id));
		    modelAndView.addObject("vendorDTO", vendor);
			modelAndView.setViewName("Stock_Section/viewVendor");
			return modelAndView;		   
	   }
	
	
	
	@RequestMapping(value="/stocks", method=RequestMethod.GET)
	   public ModelAndView viewStocks() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
		    List<InventoryPurchase> listOfPurchasedItem = adminService.getInventoryItems();
			modelAndView.setViewName("Stock_Section/purchase");
			modelAndView.addObject("listOfPurchasedItem", listOfPurchasedItem);
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/stocks/add", method=RequestMethod.GET)
	   public ModelAndView getAddStockView() {
		    Map<Long,String> vendorsMap = adminService.getVendorsNameAndId();
		    Map<String,List<InventoryItem>> mapOfItems = adminService.getInventoryItemByType();
		    ModelAndView modelAndView = viewService.getModelandViewObject("Stock_Section/addPurchase","inventoryPurchaseDTO",new InventoryPurchaseDTO());
		    modelAndView.addObject("vendorsMap", vendorsMap);
		    modelAndView.addObject("mapOfItems", mapOfItems);
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/stocks/add", method=RequestMethod.POST)
	public ModelAndView addStocks(@Valid @ModelAttribute("inventoryPurchaseDTO")InventoryPurchaseDTO inventoryPurchaseDTO) {
		LOG.info("### {}",inventoryPurchaseDTO);
		InventoryPurchase purchasedItesm = adminService.addPurchaseDetails(inventoryPurchaseDTO);
		List<InventoryPurchase> listOfPurchasedItem = adminService.getInventoryItems();
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Stock_Section/purchase");
		modelAndView.addObject("listOfPurchasedItem",listOfPurchasedItem);
		return modelAndView;
	}
	
	@RequestMapping(value="/stocks/update", method=RequestMethod.GET)
	   public ModelAndView updateStocks() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Stock_Section/updatePurchase");
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/stocks/view", method=RequestMethod.GET)
	   public ModelAndView viewStocksDetails() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Stock_Section/viewVendor");
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/vouchers", method=RequestMethod.GET)
	   public ModelAndView viewVoucherDetails() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Stock_Section/addVoucher");
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/vouchers/update", method=RequestMethod.GET)
	   public ModelAndView updateVoucherDetails() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Stock_Section/updateVoucher");
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/consumptions", method=RequestMethod.GET)
	   public ModelAndView viewConsumptions() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Stock_Section/consumption");
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/consumptions/add", method=RequestMethod.GET)
	   public ModelAndView addConsumptions() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Stock_Section/addConsumption");
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/consumptions/update", method=RequestMethod.GET)
	   public ModelAndView updateConsumptions() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Stock_Section/updateConsumption");
			return modelAndView;		   
	   }
	
	
	
	
	/********** For Visitors Table *********/
/*	@RequestMapping(value="/visitor", method=RequestMethod.GET)
		public ModelAndView visitor() {
			ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Stock_Section/visitor");
			return modelAndView;	
		}
	
	@RequestMapping(value="/visitor/add", method=RequestMethod.GET)
		public ModelAndView addVisitor() {
			ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Stock_Section/addVisitor");
			return modelAndView;	
	}
	
	@RequestMapping(value="/visitor/update", method=RequestMethod.GET)
	public ModelAndView updateVisitor() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Stock_Section/updateVisitor");
		return modelAndView;	
	}*/
	
	
	/******  For Other Expenses ********/
	@RequestMapping(value="/expenses", method=RequestMethod.GET)
	public ModelAndView expenses() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Stock_Section/expenses");
		return modelAndView;	
	}
	
	@RequestMapping(value="/expenses/add", method=RequestMethod.GET)
	public ModelAndView addExpenses() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Stock_Section/addExpenses");
		return modelAndView;	
	}
	
	@RequestMapping(value="/expenses/update", method=RequestMethod.GET)
	public ModelAndView updateExpenses() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Stock_Section/updateExpenses");
		return modelAndView;	
	}
	
	/******** School list form no:12 *****/
	
	@RequestMapping(value="/schoolList", method=RequestMethod.GET)
	   public ModelAndView viewSchoolList() {
		    ModelAndView modelAndView = viewService.getModelandViewObject();
			modelAndView.setViewName("Forms_Section/SchoolList");
			return modelAndView;		   
	   }
	
	@RequestMapping(value="/schoolList/add", method=RequestMethod.GET)
	public ModelAndView addSchoolList() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/addSchoolList");
		return modelAndView;	
	}
	
	@RequestMapping(value="/schoolList/update", method=RequestMethod.GET)
	public ModelAndView updateSchoolList() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/updateSchoolList");
		return modelAndView;	
	}
	
	/*********** Hostel List Form no:18  ********/
	
	@RequestMapping(value="/hostelList", method=RequestMethod.GET)
		public  ModelAndView viewHostelList() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/HostelList");
		return modelAndView;
	}
	
	@RequestMapping(value="/hostelList/add", method=RequestMethod.GET)
		public  ModelAndView addHostelList() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/addHostelList");
		return modelAndView;
	}
	@RequestMapping(value="/hostelList/update", method=RequestMethod.GET)
		public  ModelAndView updateHostelList() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/updateHostelList");
		return modelAndView;
	}
	@RequestMapping(value="/hostelList/view", method=RequestMethod.GET)
		public  ModelAndView printHostelList() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/viewHostelList");
		return modelAndView;
	}
	
	/************* Food Item List Form No:19  ****************/
	
	@RequestMapping(value="/foodList", method=RequestMethod.GET)
		public  ModelAndView viewFoodItemList() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/FoodList");
		return modelAndView;
	}
	
	@RequestMapping(value="/foodList/add", method=RequestMethod.GET)
		public  ModelAndView addFoodItemList() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/addFoodList");
		return modelAndView;
	}
	
	@RequestMapping(value="/foodList/update", method=RequestMethod.GET)
		public  ModelAndView updateFoodItemList() {
		ModelAndView modelAndView = viewService.getModelandViewObject();
		modelAndView.setViewName("Forms_Section/updateFoodList");
		return modelAndView;
	}
	
	
}
