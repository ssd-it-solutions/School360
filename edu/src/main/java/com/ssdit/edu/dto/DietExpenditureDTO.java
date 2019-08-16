package com.ssdit.edu.dto;

public class DietExpenditureDTO {

//	private long id;
	
	private double wheat;
	private double rice;
	private double moong;
	private double oil;
	private double chilli;
	private double fuel;
	private double salt;
	private double cabbage;
	private double khir;	
	private double mothdal;
	private double ladoo;
	private double sugar;
	private double peanut;	
	private String remarks;


	public DietExpenditureDTO() {}

	
	  public DietExpenditureDTO( double wheat, double rice, double moong, double
	  oil, double chilli, double fuel, double salt, double cabbage, double khir,
	  double mothdal, double ladoo,double sugar,double peanut,String remarks) {
	  
	  this.wheat = wheat; this.rice = rice; this.moong = moong; this.oil = oil;
	  this.chilli = chilli; this.fuel = fuel; this.salt = salt; this.cabbage =
	  cabbage; this.khir = khir; this.mothdal = mothdal; this.ladoo = ladoo;
	  this.sugar = sugar; this.peanut = peanut; this.remarks = remarks; }
	 
	


	public double getWheat() {
		return wheat;
	}


	public void setWheat(double wheat) {
		this.wheat = wheat;
	}


	public double getRice() {
		return rice;
	}

	public void setRice(double rice) {
		this.rice = rice;
	}

	public double getMoong() {
		return moong;
	}

	public void setMoong(double moong) {
		this.moong = moong;
	}

	public double getOil() {
		return oil;
	}

	public void setOil(double oil) {
		this.oil = oil;
	}

	public double getChilli() {
		return chilli;
	}

	public void setChilli(double chilli) {
		this.chilli = chilli;
	}

	public double getFuel() {
		return fuel;
	}

	public void setFuel(double fuel) {
		this.fuel = fuel;
	}

	public double getSalt() {
		return salt;
	}

	public void setSalt(double salt) {
		this.salt = salt;
	}

	public double getCabbage() {
		return cabbage;
	}

	public void setCabbage(double cabbage) {
		this.cabbage = cabbage;
	}

	public double getKhir() {
		return khir;
	}

	public void setKhir(double khir) {
		this.khir = khir;
	}

	public double getMothdal() {
		return mothdal;
	}

	public void setMothdal(double mothdal) {
		this.mothdal = mothdal;
	}

	public double getLadoo() {
		return ladoo;
	}

	public void setLadoo(double ladoo) {
		this.ladoo = ladoo;
	}

	public double getSugar() {
		return sugar;
	}

	public void setSugar(double sugar) {
		this.sugar = sugar;
	}

	public double getPeanut() {
		return peanut;
	}

	public void setPeanut(double peanut) {
		this.peanut = peanut;
	}

	

	public String getRemarks() {
		return remarks;
	}


	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}


	@Override
	public String toString() {
		return "DietExpenditureDTO [wheat=" + wheat + ", rice=" + rice + ", moong=" + moong + ", oil=" + oil
				+ ", chilli=" + chilli + ", fuel=" + fuel + ", salt=" + salt + ", cabbage=" + cabbage + ", khir=" + khir
				+ ", mothdal=" + mothdal + ", ladoo=" + ladoo + ", sugar=" + sugar + ", peanut=" + peanut + ", remarks="
				+ remarks + "]";
	}

	
	/*
	 * public void add(DietExpenditureDTO dietExpenditureDTO) { // TODO
	 * Auto-generated method stub
	 * 
	 * }
	 */
	
}
