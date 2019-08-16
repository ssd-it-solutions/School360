package com.ssdit.edu.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class EmployeeSalaryDTO {
	
	private long id;
	
	private String month;
	private String basicSalary;
	private String dearnessAllowance;
	private String houseRentAllowance;
	private String incentiveAllowance;
	private String totalSalary;
	private String deduction;
	private String netPayable;
	private String remarks;
	private String staffId;
	private String name;
	
	
	@JsonIgnore
	public String getStaffId() {
		return staffId;
	}
	@JsonIgnore
	public void setStaffId(String staffId) {
		this.staffId = staffId;
	}
	@JsonIgnore
	public String getName() {
		return name;
	}
	@JsonIgnore
	public void setName(String name) {
		this.name = name;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getBasicSalary() {
		return basicSalary;
	}
	public void setBasicSalary(String basicSalary) {
		this.basicSalary = basicSalary;
	}
	public String getDearnessAllowance() {
		return dearnessAllowance;
	}
	public void setDearnessAllowance(String dearnessAllowance) {
		this.dearnessAllowance = dearnessAllowance;
	}
	public String getHouseRentAllowance() {
		return houseRentAllowance;
	}
	public void setHouseRentAllowance(String houseRentAllowance) {
		this.houseRentAllowance = houseRentAllowance;
	}
	public String getIncentiveAllowance() {
		return incentiveAllowance;
	}
	public void setIncentiveAllowance(String incentiveAllowance) {
		this.incentiveAllowance = incentiveAllowance;
	}
	public String getTotalSalary() {
		return totalSalary;
	}
	public void setTotalSalary(String totalSalary) {
		this.totalSalary = totalSalary;
	}
	
	public String getDeduction() {
		return deduction;
	}
	public void setDeduction(String deduction) {
		this.deduction = deduction;
	}
	public String getNetPayable() {
		return netPayable;
	}
	public void setNetPayable(String netPayable) {
		this.netPayable = netPayable;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	@Override
	public String toString() {
		return "EmployeeSalaryDTO [id=" + id + ", month=" + month + ", basicSalary=" + basicSalary
				+ ", dearnessAllowance=" + dearnessAllowance + ", houseRentAllowance=" + houseRentAllowance
				+ ", incentiveAllowance=" + incentiveAllowance + ", totalSalary=" + totalSalary + ", deduction="
				+ deduction + ", netPayable=" + netPayable + ", remarks=" + remarks + ", staffId=" + staffId + ", name="
				+ name + "]";
	}
	
	
	
	
}