package com.ssdit.edu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "vendors")
public class Vendor {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	/* Vendors-information */
	@Column(name="companyName")
	private String companyName;
	
	@Column(name="companyPhone")
	private String companyPhone;
	
	@Column(name="companyEmail")
	private String companyEmail;
	
	@Column(name="address")
	private String address;
	
	@Column(name="country")
	private String country;
	
	@Column(name="state")
	private String state;
	
	@Column(name="district")
	private String district;
	
	/* Details of contact person */
	
	@Column(name="contactPersonsName")
	private String contactPersonsName;
	
	@Column(name="contactPersonsPhone")
	private String contactPersonsPhone;
	
	/* Bank Details */
	@Column(name="bankName")
	private String bankName;
	
	@Column(name="branchName")
	private String branchName;
	
	
	@Column(name="accountNumber")
	private String accountNumber;
	
	@Column(name="ifscCode")
	private String ifscCode;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyPhone() {
		return companyPhone;
	}

	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}

	public String getCompanyEmail() {
		return companyEmail;
	}

	public void setCompanyEmail(String companyEmail) {
		this.companyEmail = companyEmail;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getContactPersonsName() {
		return contactPersonsName;
	}

	public void setContactPersonsName(String contactPersonsName) {
		this.contactPersonsName = contactPersonsName;
	}

	public String getContactPersonsPhone() {
		return contactPersonsPhone;
	}

	public void setContactPersonsPhone(String contactPersonsPhone) {
		this.contactPersonsPhone = contactPersonsPhone;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getIfscCode() {
		return ifscCode;
	}

	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}

	@Override
	public String toString() {
		return "Vendor [id=" + id + ", companyName=" + companyName + ", companyPhone=" + companyPhone
				+ ", companyEmail=" + companyEmail + ", address=" + address + ", country=" + country + ", state="
				+ state + ", district=" + district + ", contactPersonsName=" + contactPersonsName
				+ ", contactPersonsPhone=" + contactPersonsPhone + ", bankName=" + bankName + ", branchName="
				+ branchName + ", accountNumber=" + accountNumber + ", ifscCode=" + ifscCode + "]";
	}
	
	
}

