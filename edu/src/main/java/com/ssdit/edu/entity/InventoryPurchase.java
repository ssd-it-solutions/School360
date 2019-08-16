package com.ssdit.edu.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "InventoryPurchase")
public class InventoryPurchase {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	@Column(name="category")
	private String category;
	
	@ManyToOne(cascade = CascadeType.ALL,
            fetch = FetchType.LAZY)
	@JoinColumn(name = "item_id", nullable = false)
    private InventoryItem item;
	
	@ManyToOne( cascade = CascadeType.ALL,
            fetch = FetchType.LAZY)
	@JoinColumn(name = "vendor_id", nullable = false)
    private Vendor vendor;
	
	@Column(name="quantity")
	private int quantity;
	
	@Column(name="unit")
	private String unit;
	
	@Column(name="rate")
	private String rate;
	
	@Column(name="actualCost")
	private int actualCost;
	
	@Column(name="discount")
	private String discount;
	
	@Column(name="paidAmount")
	private double paidAmount;
	
	@Column(name="approvedCost")
	private double approvedCost;

	@Column(name="nonApprovedCost")
	private double	nonApprovedCost;
	
	@Column(name="nonApprovedCostReason")
	private String 	nonApprovedCostReason;

	@Column(name="purchaseDate")
	private String purchaseDate;
	
	@Column(name="monthYear")
	private String monthYear;
	
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

	@JsonIgnore
	public InventoryItem getItem() {
		return item;
	}

	public void setItem(InventoryItem item) {
		this.item = item;
	}

	@JsonIgnore
	public Vendor getVendor() {
		return vendor;
	}

	public void setVendor(Vendor vendor) {
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
		return "InventoryPurchase [id=" + id + ", category=" + category + ", item=" + item + ", vendor=" + vendor
				+ ", quantity=" + quantity + ", unit=" + unit + ", rate=" + rate + ", actualCost=" + actualCost
				+ ", discount=" + discount + ", paidAmount=" + paidAmount + ", approvedCost=" + approvedCost
				+ ", nonApprovedCost=" + nonApprovedCost + ", nonApprovedCostReason=" + nonApprovedCostReason
				+ ", purchaseDate=" + purchaseDate + ", monthYear=" + monthYear + "]";
	}
	
}
