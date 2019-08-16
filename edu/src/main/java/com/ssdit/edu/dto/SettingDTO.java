package com.ssdit.edu.dto;

import java.util.Arrays;

public class SettingDTO {
	
	private long id;
	
	/* Settings Details */
	private String organization_name;
	private String ashram_name;
	private String org_president_name;
	private String president_mobileNo;
	private String principle_name;
	private String principle_mobileNo;
	private String address;
	private String email;
	private String school_code;
	private String school_language;
	private byte[] logoField;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getOrganization_name() {
		return organization_name;
	}
	public void setOrganization_name(String organization_name) {
		this.organization_name = organization_name;
	}
	public String getAshram_name() {
		return ashram_name;
	}
	public void setAshram_name(String ashram_name) {
		this.ashram_name = ashram_name;
	}
	public String getOrg_president_name() {
		return org_president_name;
	}
	public void setOrg_president_name(String org_president_name) {
		this.org_president_name = org_president_name;
	}
	public String getPresident_mobileNo() {
		return president_mobileNo;
	}
	public void setPresident_mobileNo(String president_mobileNo) {
		this.president_mobileNo = president_mobileNo;
	}
	public String getPrinciple_name() {
		return principle_name;
	}
	public void setPrinciple_name(String principle_name) {
		this.principle_name = principle_name;
	}
	public String getPrinciple_mobileNo() {
		return principle_mobileNo;
	}
	public void setPrinciple_mobileNo(String principle_mobileNo) {
		this.principle_mobileNo = principle_mobileNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSchool_code() {
		return school_code;
	}
	public void setSchool_code(String school_code) {
		this.school_code = school_code;
	}
	public String getSchool_language() {
		return school_language;
	}
	public void setSchool_language(String school_language) {
		this.school_language = school_language;
	}
	public byte[] getLogoField() {
		return logoField;
	}
	public void setLogoField(byte[] logoField) {
		this.logoField = logoField;
	}
	@Override
	public String toString() {
		return "SettingDTO [id=" + id + ", organization_name=" + organization_name + ", ashram_name=" + ashram_name
				+ ", org_president_name=" + org_president_name + ", president_mobileNo=" + president_mobileNo
				+ ", principle_name=" + principle_name + ", principle_mobileNo=" + principle_mobileNo + ", address="
				+ address + ", email=" + email + ", school_code=" + school_code + ", school_language=" + school_language
				+ ", logoField=" + Arrays.toString(logoField) + "]";
	}
	
	
}