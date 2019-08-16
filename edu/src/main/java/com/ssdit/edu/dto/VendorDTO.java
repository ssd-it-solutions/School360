package com.ssdit.edu.dto;
public class VendorDTO {
	
	private long id;
	
	/* Vendor Information   */
	private String companyName;
	private String companyPhone;
	private String companyEmail;
	private String address;
	private String country;
	private String state;
	private String district;
	
	/* Details of contact person */
	private String contactPersonsName;
	private String contactPersonsPhone;
	private String bankName;
	private String branchName;
	private String accountNumber;
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
		return "VendorDTO [id=" + id + ", companyName=" + companyName + ", companyPhone=" + companyPhone
				+ ", companyEmail=" + companyEmail + ", address=" + address + ", country=" + country + ", state="
				+ state + ", district=" + district + ", contactPersonsName=" + contactPersonsName
				+ ", contactPersonsPhone=" + contactPersonsPhone + ", bankName=" + bankName + ", branchName="
				+ branchName + ", accountNumber=" + accountNumber + ", ifscCode=" + ifscCode + "]";
	}
	
	
}