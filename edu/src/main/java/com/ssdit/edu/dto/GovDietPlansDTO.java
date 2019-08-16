package com.ssdit.edu.dto;

import javax.persistence.Column;

public class GovDietPlansDTO {
	
  
	private String eatableType;
	
	private String eatableItems;
	
	private double firstToFive;
	
	private double sixToEight;
	
	private double nineToTwelve;
	
	public GovDietPlansDTO() {}

	public GovDietPlansDTO(String eatableType,String eatableItems, double firstToFive, double sixToEight, double nineToTwelve) {
		
		this.eatableType = eatableType;
		this.eatableItems = eatableItems;
		this.firstToFive = firstToFive;
		this.sixToEight = sixToEight;
		this.nineToTwelve = nineToTwelve;
		
	}

	public String getEatableType() {
		return eatableType;
	}

	public void setEatableType(String eatableType) {
		this.eatableType = eatableType;
	}

	public String getEatableItems() {
		return eatableItems;
	}

	public void setEatableItems(String eatableItems) {
		this.eatableItems = eatableItems;
	}

	public double getFirstToFive() {
		return firstToFive;
	}

	public void setFirstToFive(double firstToFive) {
		this.firstToFive = firstToFive;
	}

	public double getSixToEight() {
		return sixToEight;
	}

	public void setSixToEight(double sixToEight) {
		this.sixToEight = sixToEight;
	}

	public double getNineToTwelve() {
		return nineToTwelve;
	}

	public void setNineToTwelve(double nineToTwelve) {
		this.nineToTwelve = nineToTwelve;
	}

	@Override
	public String toString() {
		return "GovDietPlansDTO [eatableType=" + eatableType + ", eatableItems=" + eatableItems + ", firstToFive="
				+ firstToFive + ", sixToEight=" + sixToEight + ", nineToTwelve=" + nineToTwelve + "]";
	}
	

	
	
}
