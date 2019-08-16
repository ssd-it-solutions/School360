package com.ssdit.edu.dto;

public class MonthlyPurchaseSummaryDTO {

	private String items;
	private double totalPrice;
	private int quantity;
	
	
	public MonthlyPurchaseSummaryDTO() {
		
	}
	public MonthlyPurchaseSummaryDTO(String items, double totalPrice, int quantity) {
		
		this.items = items;
		this.totalPrice = totalPrice;
		this.quantity = quantity;
	}
	
	
	public String getItems() {
		return items;
	}
	public void setItems(String items) {
		this.items = items;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "MonthlyPurchaseSummaryDTO [items=" + items + ", totalPrice=" + totalPrice + ", quantity=" + quantity
				+ "]";
	}
	
	
}
