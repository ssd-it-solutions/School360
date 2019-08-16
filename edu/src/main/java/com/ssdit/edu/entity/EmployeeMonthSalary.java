package com.ssdit.edu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.internal.IgnoreForbiddenApisErrors;

@Entity
@Table(name ="EmployeeMonthSalary")
public class EmployeeMonthSalary {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	@Column(name="month")
	private String month;
	
	@ManyToOne
    @JoinColumn
    private Staff staff;
	
	@Column(name="basicSalary")
	private String basicSalary;
	
	@Column(name="dearnessAllowance")
	private String dearnessAllowance;
	
	@Column(name="houseRentAllowance")
	private String houseRentAllowance;
	
	@Column(name="incentiveAllowance")
	private String incentiveAllowance;
	
	@Column(name="totalSalary")
	private String totalSalary;
	
	@Column(name="deduction")
	private String deduction;
	
	@Column(name="netPayable")
	private String netPayable;
	
	@Column(name="remarks")
	private String remarks;

	
	
	public Staff getStaff() {
		return staff;
	}

	public void setStaff(Staff staff) {
		this.staff = staff;
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

	public String getDeduction() {
		return deduction;
	}

	public void setDeduction(String deduction) {
		this.deduction = deduction;
	}

	@Override
	public String toString() {
		return "employee_month_salary [id=" + id + ", month=" + month + ", basicSalary=" + basicSalary
				+ ", dearnessAllowance=" + dearnessAllowance + ", houseRentAllowance=" + houseRentAllowance
				+ ", incentiveAllowance=" + incentiveAllowance + ", totalSalary=" + totalSalary + ", deduction="
				+ deduction + ", netPayable=" + netPayable + ", remarks=" + remarks + "]";
	}

	
}