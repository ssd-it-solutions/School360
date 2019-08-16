package com.ssdit.edu.repo;

import org.springframework.data.repository.CrudRepository;

import com.ssdit.edu.entity.GovDietPlans;

public interface GovDietPlansRepo  extends CrudRepository<GovDietPlans, Integer>{

	/*
	 * GovDietPlans findAllByEatableItems(String string);
	 * 
	 * GovDietPlans findByEatableItems(String string);
	 */
	
	GovDietPlans findIdByEatableItems(String itamName);
	
	GovDietPlans findFirstToFiveByEatableItems(String itamName);

	GovDietPlans findSixToEightByEatableItems(String itamName);
	
	GovDietPlans findNineToTwelveByEatableItems(String itamName);
	
}
