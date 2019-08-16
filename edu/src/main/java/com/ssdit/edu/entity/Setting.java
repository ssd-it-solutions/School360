package com.ssdit.edu.entity;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name ="setting")
public class Setting {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	/* Organization Details  */
	@Column(name="organization_name")
	private String organization_name;
	
	@Column(name="ashram_name")
	private String ashram_name;
	
	@Column(name="org_president_name")
	private String org_president_name;
	
	@Column(name="president_mobileNo")
	private String president_mobileNo;
	
	@Column(name="principle_name")
	private String principle_name;
	
	@Column(name="principle_mobileNo")
	private String principle_mobileNo;
	
	@Column(name="address")
	private String address;
	
	@Column(name="email")
	private String email;
	
	@Column(name="school_code")
	private String school_code;
	
	@Column(name="school_language")
	private String school_language;
	
	@Column(name="logo")
	@Lob
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
		return "Setting [id=" + id + ", organization_name=" + organization_name + ", ashram_name=" + ashram_name
				+ ", org_president_name=" + org_president_name + ", president_mobileNo=" + president_mobileNo
				+ ", principle_name=" + principle_name + ", principle_mobileNo=" + principle_mobileNo + ", address="
				+ address + ", email=" + email + ", school_code=" + school_code + ", school_language=" + school_language
				+ ", logoField=" + Arrays.toString(logoField) + "]";
	}

	
}