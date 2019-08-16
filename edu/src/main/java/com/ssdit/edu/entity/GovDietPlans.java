package com.ssdit.edu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="gov_diet_plans")
public class GovDietPlans {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO) 
	private int id;
	
	@Column(name="eatableType")
	private String eatableType;
	
	@Column(name="eatableItems")
	private String eatableItems;
	
	@Column(name="firstToFive")
	private double firstToFive;
	
	
	@Column(name="sixToEight")
	private double sixToEight;
	
	@Column(name="nineToTwelve")
	private double nineToTwelve;

	
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
		return "GovDietPlans [id=" + id + ", eatableType=" + eatableType + ", eatableItems=" + eatableItems
				+ ", firstToFive=" + firstToFive + ", sixToEight=" + sixToEight + ", nineToTwelve=" + nineToTwelve
				+ ", getEatableType()=" + getEatableType() + ", getEatableItems()=" + getEatableItems() + ", getId()="
				+ getId() + ", getFirstToFive()=" + getFirstToFive() + ", getSixToEight()=" + getSixToEight()
				+ ", getNineToTwelve()=" + getNineToTwelve() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

	
	
}
