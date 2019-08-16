package com.ssdit.edu.dto;

public class InventoryPurchaseDTO {

	private long id;
	private String category;
    private String item;
    private String vendor;
	private int quantity;
	private String unit;
	private String rate;
	private int actualCost;
	private String discount;
	private double paidAmount;
	private double approvedCost;
	private double	nonApprovedCost;
	private String 	nonApprovedCostReason;
	private String purchaseDate;
	private String monthYear;
	
	public InventoryPurchaseDTO() {
		
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getVendor() {
		return vendor;
	}
	public void setVendor(String vendor) {
		this.vendor = vendor;
	}

	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public int getActualCost() {
		return actualCost;
	}
	public void setActualCost(int actualCost) {
		this.actualCost = actualCost;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}	
	public double getPaidAmount() {
		return paidAmount;
	}
	public void setPaidAmount(double paidAmount) {
		this.paidAmount = paidAmount;
	}
	public double getApprovedCost() {
		return approvedCost;
	}
	public void setApprovedCost(double approvedCost) {
		this.approvedCost = approvedCost;
	}
	public double getNonApprovedCost() {
		return nonApprovedCost;
	}
	public void setNonApprovedCost(double nonApprovedCost) {
		this.nonApprovedCost = nonApprovedCost;
	}
	public String getNonApprovedCostReason() {
		return nonApprovedCostReason;
	}
	public void setNonApprovedCostReason(String nonApprovedCostReason) {
		this.nonApprovedCostReason = nonApprovedCostReason;
	}
	public String getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(String purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public String getMonthYear() {
		return monthYear;
	}
	public void setMonthYear(String monthYear) {
		this.monthYear = monthYear;
	}
	@Override
	public String toString() {
		return "InventoryPurchaseDTO [id=" + id + ", category=" + category + ", item=" + item + ", vendor=" + vendor
				+ ", quantity=" + quantity + ", unit=" + unit + ", rate=" + rate + ", actualCost=" + actualCost
				+ ", discount=" + discount + ", paidAmount=" + paidAmount + ", approvedCost=" + approvedCost
				+ ", nonApprovedCost=" + nonApprovedCost + ", nonApprovedCostReason=" + nonApprovedCostReason
				+ ", purchaseDate=" + purchaseDate + ", monthYear=" + monthYear + "]";
	}
	
}
