package com.ssdit.edu.services;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ssdit.edu.entity.GovDietPlans;
import com.ssdit.edu.repo.GovDietPlansRepo;
@Component
public class DietExpenditureService {
	
	@Autowired
	GovDietPlansRepo govDietPlansRepo;
	
	/**
	 * Step one get student count for classes 1 to 5, 6 to 8 and 9 t0 12 for each
	 * month startin from April 20-18 to march 2019
	 * Step two get daily measures of food by diet plan
	 * Step three calculation of student count and consume food product
	 */
	public Map<String, Map<String, Double>> getFoodExpenses(String classGroup,Map<String,Double> totalPrice) {
		
		Map<String, Double> map1to5 = getStudentCountByClassGroup(classGroup);
		Map<String, Double> dailyMeasure = getDailyMeasuresByDietPlan(classGroup);
	
		Map<String, Map<String, Double>> op=calculate(map1to5, dailyMeasure ,totalPrice);
		System.out.println("List :"+op);
		
		return op;

	}

	public Map<String, Map<String, Double>> calculate(Map<String, Double> studentCountMap,
			Map<String, Double> dailyMeasure, Map<String, Double> totalPrice) {
		Map<String, Integer> aa = new LinkedHashMap<>();
		double totalStud = 0;
		Map<String, Map<String, Double>> calculatedvalues = new LinkedHashMap<>();
		Map<String, Double> totalCountMap = new LinkedHashMap<>();
		for (Map.Entry<String, Double> entryStudentCount : studentCountMap.entrySet()) {
			String month = entryStudentCount.getKey();
			Double count = entryStudentCount.getValue();

			totalStud = totalStud + count;

			Map<String, Double> mapOfItemConsumption = new LinkedHashMap<>();
			
			mapOfItemConsumption.put("Total Students", count);
			for (Map.Entry<String, Double> entryDailyMeasures : dailyMeasure.entrySet()) {
				String foodItem = entryDailyMeasures.getKey();
				Double grams = entryDailyMeasures.getValue();

				double consumpation = grams * count;
				mapOfItemConsumption.put(foodItem, consumpation);

				if (totalPrice.containsKey(foodItem)) {
					totalPrice.put(foodItem, totalPrice.get(foodItem) + consumpation);

				} else {
					totalPrice.put(foodItem, new Double(0));

				}

				
				calculatedvalues.put(month, mapOfItemConsumption);

			}
		}
		totalCountMap.put("TotalStudents", totalStud);
		calculatedvalues.put("TotalStudents", totalCountMap);
		return calculatedvalues;
	}
	
	
	public Map<String, Double> getStudentCountByClassGroup(String classGroup) {

		/**
		 * This is mock data it should get populated from SQL query
		 */
		Map<String, Double> map = new LinkedHashMap<>();
		if (classGroup.equalsIgnoreCase("1 to 5")) {
			map.put("April-2018", 100.0);
			map.put("May-2018", 83.0);
			map.put("June-2018", 71.0);
			map.put("July-2018", 101.0);
			map.put("Aug-2018", 97.0);
			map.put("Sept-2018", 80.0);
			map.put("Oct-2018", 63.0);
			map.put("Nov-2018", 77.0);
			map.put("Dec-2018", 102.0);
			map.put("Jan-2019", 93.0);
			map.put("Feb-2019", 71.0);
			map.put("March-2019", 97.0);
		} else if (classGroup.equalsIgnoreCase("6 to 8")) {
			map.put("April-2018", 66.0);
			map.put("May-2018", 85.0);
			map.put("June-2018", 77.0);
			map.put("July-2018", 83.0);
			map.put("Aug-2018", 90.0);
			map.put("Sept-2018", 990.0);
			map.put("Oct-2018", 83.0);
			map.put("Nov-2018", 71.0);
			map.put("Dec-2018", 71.0);
			map.put("Jan-2019", 84.0);
			map.put("Feb-2019", 101.0);
			map.put("March-2019", 91.0);
		} else {
			map.put("April-2018", 70.0);
			map.put("May-2018", 86.0);
			map.put("June-2018", 74.0);
			map.put("July-2018", 110.0);
			map.put("Aug-2018", 91.0);
			map.put("Sept-2018", 69.0);
			map.put("Oct-2018", 88.0);
			map.put("Nov-2018", 73.0);
			map.put("Dec-2018", 91.0);
			map.put("Jan-2019", 96.0);
			map.put("Feb-2019", 89.0);
			map.put("March-2019", 97.0);
		}
		return map;
	}
	
	public Map <String , Double> getDailyMeasuresByDietPlan(String classGroup){
		/**
		 * This  is mock fetch it from DB
		 */	
		Map<String,Double> mapOfDailyMeasures = new LinkedHashMap<>();
		String[] items={"Wheat", "Rice", "Moong", "Oil/Ghee","Chilli","Gas","Salt","Cabbage","khir","Moth-dal","Ladoo","Sugar/Jaggery","Peanut"};
		
			if (classGroup.equalsIgnoreCase("1 to 5"))
			{
				for(int j=0;j<items.length;j++)
				{
					GovDietPlans govDietPlans=govDietPlansRepo.findIdByEatableItems(items[j]);		
					mapOfDailyMeasures.put(items[j], govDietPlans.getFirstToFive());
				}
			} 
		 else if (classGroup.equalsIgnoreCase("6 to 8")) 
		 { 
			 for(int j=0;j<items.length;j++)
				{
				 	GovDietPlans govDietPlans=govDietPlansRepo.findSixToEightByEatableItems(items[j]);
				 	mapOfDailyMeasures.put(items[j], govDietPlans.getSixToEight()); 
				}		 		
		
		 } else
		 {
			 for(int j=0;j<items.length;j++)
				{
				 GovDietPlans govDietPlans=govDietPlansRepo.findNineToTwelveByEatableItems(items[j]);
				 mapOfDailyMeasures.put(items[j], govDietPlans.getNineToTwelve()); }
				}
			return mapOfDailyMeasures;
	}
}
