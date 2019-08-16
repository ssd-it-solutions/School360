package com.ssdit.edu.dto;

import java.util.List;

public class DietExpenditure {
	
	private int totalStudent;
	
	private String remark;
	 
	private double standardOfDiet;
	
	private List<Double> calculation;
	
	private double totalCost; 
	
	private double averagePrice;
	
	private double totalKgWeight;
	
	private double excessWeight;
	
	private double excessCost;
	
	private double NonvalidExpenditure;
	
	public DietExpenditure() {}

	public DietExpenditure(int totalStudent,String remark,  List<Double> calculation,double totalKgWeight,double totalCost, double averagePrice,double standardOfDiet,double excessWeight,double excessCost,double NonvalidExpenditure) {
		
		this.totalStudent = totalStudent;
		this.remark = remark;
		this.calculation = calculation;
		this.standardOfDiet = standardOfDiet;
		this.totalCost = totalCost;
		this.averagePrice = averagePrice;
		this.totalKgWeight = totalKgWeight;
		this.excessWeight = excessWeight;
		this.excessCost = excessCost;
		this.NonvalidExpenditure = NonvalidExpenditure;
	}
	
	public List<Double> getCalculation() {
		return calculation;
	}

	public void setCalculation(List<Double> calculation) {
		this.calculation = calculation;
	}

	public int getTotalStudent() {
		return totalStudent;
	}

	public void setTotalStudent(int totalStudent) {
		this.totalStudent = totalStudent;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public double getStandardOfDiet() {
		return standardOfDiet;
	}

	public void setStandardOfDiet(double standardOfDiet) {
		this.standardOfDiet = standardOfDiet;
	}

	public double getTotalCost() {
		return totalCost;
	}

	public void setTotalCost(double totalCost) {
		this.totalCost = totalCost;
	}

	public double getAveragePrice() {
		return averagePrice;
	}

	public void setAveragePrice(double averagePrice) {
		this.averagePrice = averagePrice;
	}

	public double getTotalKgWeight() {
		return totalKgWeight;
	}

	public void setTotalKgWeight(double totalKgWeight) {
		this.totalKgWeight = totalKgWeight;
	}

	public double getExcessWeight() {
		return excessWeight;
	}

	public void setExcessWeight(double excessWeight) {
		this.excessWeight = excessWeight;
	}

	public double getExcessCost() {
		return excessCost;
	}

	public void setExcessCost(double excessCost) {
		this.excessCost = excessCost;
	}

	public double getNonvalidExpenditure() {
		return NonvalidExpenditure;
	}

	public void setNonvalidExpenditure(double nonvalidExpenditure) {
		NonvalidExpenditure = nonvalidExpenditure;
	}

	@Override
	public String toString() {
		return "DietExpenditure [totalStudent=" + totalStudent + ", remark=" + remark + ", standardOfDiet="
				+ standardOfDiet + ", calculation=" + calculation + ", totalCost=" + totalCost + ", averagePrice="
				+ averagePrice + ", totalKgWeight=" + totalKgWeight + ", excessWeight=" + excessWeight + ", excessCost="
				+ excessCost + ", NonvalidExpenditure=" + NonvalidExpenditure + "]";
	}

		
}
