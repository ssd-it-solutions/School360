package com.ssdit.edu.util;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class CommonUtils {

	public String getCurrentMonthAndYear() {
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		String month = cal.get(Calendar.MONTH)+1+"";
		if(month.length() == 1) {
			month = "0"+month;
		}
		String monthName = getMonthName(month);
		return monthName+" "+year;
	}
	
	public String getMonthName(String month) {
		Map<String,String> months = new HashMap<>();
    	months.put("01","Jan");months.put("02","Feb");months.put("03","Narch");
    	months.put("04","April");months.put("05","May");months.put("06","June");
    	months.put("07","July");months.put("08","Aug");months.put("09","Sept");
    	months.put("10","Oct");months.put("11","Nov");months.put("12","Dec");
    	return months.get(month); 
	}
	
	
}
