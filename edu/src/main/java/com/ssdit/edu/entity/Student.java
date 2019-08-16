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
@Table(name="student")
public class Student {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	/* Personal Information for Student */
	@Column(name="photo")
	@Lob
	private byte[] photoField;
	
	@Column(name="academicYear")
	private String academicYear;
	
	@Column(name="registerNumber")
	private String registerNumber;
	
	@Column(name="firstName")
	private String firstName;
	
	@Column(name="middleName")
	private String middleName;
	
	@Column(name="lastName")
	private String lastName;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="dob")
	private String dob;
	
	@Column(name="temporaryAddress")
	private String temporaryAddress;
	
	@Column(name="permanentAddress")
	private String permanentAddress; 
	
	@Column(name="adharNo")
	private String adharNo;
	
	@Column(name="religion")
	private String religion;
	
	@Column(name="category")
	private String category;
	
	@Column(name="caste")
	private String caste;
	
	/* Academic information for student */
	@Column(name="previousSchoolName")
	private String previousSchoolName;
	
	@Column(name="previousSchoolStd")
	private String previousSchoolStd;
	
	@Column(name="assignClass")
	private String assignClass;
	
	@Column(name="assignDivision")
	private String assignDivision;
	
	@Column(name="rollNumber")
	private String rollNumber;
	
	/* Guardian Details Information */
	
	@Column(name="guardianFirstName")
	private String guardianFirstName;
	
	@Column(name="guardianMiddleName")
	private String guardianMiddleName;
	
	@Column(name="guardianLastName")
	private String guardianLastName;
	
	@Column(name="phoneNumber")
	private String phoneNumber;
	
	@Column(name="address")
	private String address;
	
	
	@Column(name="district")
	private String district;
	
	@Column(name="Tal")
	private String Tal;
	
	@Column(name="village")
	private String village;
	
	@Column(name="zipCode")
	private String zipCode;
	
	/* Document Details Information */
	
	@Column(name="adhar_card")
	@Lob
	private byte[] adharCardField;
	
	@Column(name="birth_certificate")
	@Lob
	private byte[] birthCertificateField;
	
	@Column(name="previous_schoollc")
	@Lob
	private byte[] previousSchoolLCField;
	

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	

	public byte[] getPhotoField() {
		return photoField;
	}

	public void setPhotoField(byte[] photoField) {
		this.photoField = photoField;
	}

	public String getAcademicYear() {
		return academicYear;
	}

	public void setAcademicYear(String academicYear) {
		this.academicYear = academicYear;
	}

	public String getRegisterNumber() {
		return registerNumber;
	}

	public void setRegisterNumber(String registerNumber) {
		this.registerNumber = registerNumber;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getTemporaryAddress() {
		return temporaryAddress;
	}

	public void setTemporaryAddress(String temporaryAddress) {
		this.temporaryAddress = temporaryAddress;
	}

	public String getPermanentAddress() {
		return permanentAddress;
	}

	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public String getAdharNo() {
		return adharNo;
	}

	public void setAdharNo(String adharNo) {
		this.adharNo = adharNo;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCaste() {
		return caste;
	}

	public void setCaste(String caste) {
		this.caste = caste;
	}

	public String getPreviousSchoolName() {
		return previousSchoolName;
	}

	public void setPreviousSchoolName(String previousSchoolName) {
		this.previousSchoolName = previousSchoolName;
	}

	public String getPreviousSchoolStd() {
		return previousSchoolStd;
	}

	public void setPreviousSchoolStd(String previousSchoolStd) {
		this.previousSchoolStd = previousSchoolStd;
	}

	public String getAssignClass() {
		return assignClass;
	}

	public void setAssignClass(String assignClass) {
		this.assignClass = assignClass;
	}

	public String getAssignDivision() {
		return assignDivision;
	}

	public void setAssignDivision(String assignDivision) {
		this.assignDivision = assignDivision;
	}

	public String getRollNumber() {
		return rollNumber;
	}

	public void setRollNumber(String rollNumber) {
		this.rollNumber = rollNumber;
	}

	public String getGuardianFirstName() {
		return guardianFirstName;
	}

	public void setGuardianFirstName(String guardianFirstName) {
		this.guardianFirstName = guardianFirstName;
	}

	public String getGuardianMiddleName() {
		return guardianMiddleName;
	}

	public void setGuardianMiddleName(String guardianMiddleName) {
		this.guardianMiddleName = guardianMiddleName;
	}

	public String getGuardianLastName() {
		return guardianLastName;
	}

	public void setGuardianLastName(String guardianLastName) {
		this.guardianLastName = guardianLastName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getTal() {
		return Tal;
	}

	public void setTal(String tal) {
		Tal = tal;
	}

	public String getVillage() {
		return village;
	}

	public void setVillage(String village) {
		this.village = village;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public byte[] getAdharCardField() {
		return adharCardField;
	}

	public void setAdharCardField(byte[] adharCardField) {
		this.adharCardField = adharCardField;
	}

	public byte[] getBirthCertificateField() {
		return birthCertificateField;
	}

	public void setBirthCertificateField(byte[] birthCertificateField) {
		this.birthCertificateField = birthCertificateField;
	}

	public byte[] getPreviousSchoolLCField() {
		return previousSchoolLCField;
	}

	public void setPreviousSchoolLCField(byte[] previousSchoolLCField) {
		this.previousSchoolLCField = previousSchoolLCField;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", photoField=" + Arrays.toString(photoField) + ", academicYear=" + academicYear
				+ ", registerNumber=" + registerNumber + ", firstName=" + firstName + ", middleName=" + middleName
				+ ", lastName=" + lastName + ", gender=" + gender + ", dob=" + dob + ", temporaryAddress="
				+ temporaryAddress + ", permanentAddress=" + permanentAddress + ", adharNo=" + adharNo + ", religion="
				+ religion + ", category=" + category + ", caste=" + caste + ", previousSchoolName="
				+ previousSchoolName + ", previousSchoolStd=" + previousSchoolStd + ", assignClass=" + assignClass
				+ ", assignDivision=" + assignDivision + ", rollNumber=" + rollNumber + ", guardianFirstName="
				+ guardianFirstName + ", guardianMiddleName=" + guardianMiddleName + ", guardianLastName="
				+ guardianLastName + ", phoneNumber=" + phoneNumber + ", address=" + address + ", district=" + district
				+ ", Tal=" + Tal + ", village=" + village + ", zipCode=" + zipCode + ", adharCardField="
				+ Arrays.toString(adharCardField) + ", birthCertificateField=" + Arrays.toString(birthCertificateField)
				+ ", previousSchoolLCField=" + Arrays.toString(previousSchoolLCField) + "]";
	}
}
	
	
	


