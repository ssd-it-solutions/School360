package com.ssdit.edu.dto;

public class PurchaseReportDTO {
	
	private long itemId;
	
	private double totalCost; 
	
	private double totalApprovedCost;
	
	private double totalNonapprovedCost;
	
	private String reasonForNonApprovedCost;
	
	private String itemName;
	
	public PurchaseReportDTO() {}

	public PurchaseReportDTO(long itemId, double totalCost, double totalApprovedCost, double totalNonapprovedCost,String reasonForNonApprovedCost,String itemName) {
		
		this.itemId = itemId;
		this.totalCost = totalCost;
		this.totalApprovedCost = totalApprovedCost;
		this.totalNonapprovedCost = totalNonapprovedCost;
		this.reasonForNonApprovedCost = reasonForNonApprovedCost;
		this.itemName = itemName;
	}

	public long getItemId() {
		return itemId;
	}

	public void setItemId(long itemId) {
		this.itemId = itemId;
	}

	public double getTotalCost() {
		return totalCost;
	}

	public void setTotalCost(double totalCost) {
		this.totalCost = totalCost;
	}

	public double getTotalApprovedCost() {
		return totalApprovedCost;
	}

	public void setTotalApprovedCost(double totalApprovedCost) {
		this.totalApprovedCost = totalApprovedCost;
	}

	public double getTotalNonapprovedCost() {
		return totalNonapprovedCost;
	}

	public void setTotalNonapprovedCost(double totalNonapprovedCost) {
		this.totalNonapprovedCost = totalNonapprovedCost;
	}

	public String getReasonForNonApprovedCost() {
		return reasonForNonApprovedCost;
	}

	public void setReasonForNonApprovedCost(String reasonForNonApprovedCost) {
		this.reasonForNonApprovedCost = reasonForNonApprovedCost;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	@Override
	public String toString() {
		return "PurchaseReportDTO [itemId=" + itemId + ", totalCost=" + totalCost + ", totalApprovedCost="
				+ totalApprovedCost + ", totalNonapprovedCost=" + totalNonapprovedCost + ", reasonForNonApprovedCost="
				+ reasonForNonApprovedCost + ", itemName=" + itemName + "]";
	}
}
