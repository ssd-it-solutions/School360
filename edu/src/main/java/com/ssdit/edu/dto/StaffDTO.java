package com.ssdit.edu.dto;

import java.util.Arrays;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class StaffDTO {

	
	private long id;

	/* Personal information */
	private String firstName;

	private String middleName;

	private String lastName;

	private String address;

	private String dob;

	private String age;

	private String phoneNumber;

	private String emailAddress;

	private String gender;

	private String adharNo;

	private String knownLang;

	private String joiningDate;

	private byte[] photoField;

	private byte[] adharCardField;
	
	private String joiningPeriod;
	
	private String staffCategory;
	
	@JsonIgnore
	private String assignClass;
	
	@JsonIgnore
	private String assignDivision;

	/* Educational Details */

	

	private String qualification;

	private String institute;

	private String board;

	private String marks;

	/* Work Experience */

	

	private String totalWorkExperience;

	private String designation;

	private String organizationAddress;

	private String achievements;

	/* Salary Details */

	private String salaryMonth;
	
	private String basicSalary;
	
	private String dearnessAllowance;
	
	private String houseAllowance;
	
	private String incentiveAllowance;
	
	private String totalSalary;
	
	private String cutSalary;

	private String netPayable;
	
	private String password;
	
	private String username;
	
	private String role;
	

	

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getJoiningPeriod() {
		return joiningPeriod;
	}

	public void setJoiningPeriod(String joiningPeriod) {
		this.joiningPeriod = joiningPeriod;
	}

	public String getStaffCategory() {
		return staffCategory;
	}

	public void setStaffCategory(String staffCategory) {
		this.staffCategory = staffCategory;
	}

	public String getSalaryMonth() {
		return salaryMonth;
	}

	public void setSalaryMonth(String salaryMonth) {
		this.salaryMonth = salaryMonth;
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

	public String getHouseAllowance() {
		return houseAllowance;
	}

	public void setHouseAllowance(String houseAllowance) {
		this.houseAllowance = houseAllowance;
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

	public String getCutSalary() {
		return cutSalary;
	}

	public void setCutSalary(String cutSalary) {
		this.cutSalary = cutSalary;
	}

	
	public String getNetPayable() {
		return netPayable;
	}

	public void setNetPayable(String netPayable) {
		this.netPayable = netPayable;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAdharNo() {
		return adharNo;
	}

	public void setAdharNo(String adharNo) {
		this.adharNo = adharNo;
	}

	public String getKnownLang() {
		return knownLang;
	}

	public void setKnownLang(String knownLang) {
		this.knownLang = knownLang;
	}

	public String getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(String joiningDate) {
		this.joiningDate = joiningDate;
	}

	
	public byte[] getPhotoField() {
		return photoField;
	}

	public void setPhotoField(byte[] photoField) {
		this.photoField = photoField;
	}

	public byte[] getAdharCardField() {
		return adharCardField;
	}

	public void setAdharCardField(byte[] adharCard) {
		this.adharCardField = adharCard;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getInstitute() {
		return institute;
	}

	public void setInstitute(String institute) {
		this.institute = institute;
	}

	public String getBoard() {
		return board;
	}

	public void setBoard(String board) {
		this.board = board;
	}

	public String getMarks() {
		return marks;
	}

	public void setMarks(String marks) {
		this.marks = marks;
	}

	public String getTotalWorkExperience() {
		return totalWorkExperience;
	}

	public void setTotalWorkExperience(String totalWorkExperience) {
		this.totalWorkExperience = totalWorkExperience;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getOrganizationAddress() {
		return organizationAddress;
	}

	public void setOrganizationAddress(String organizationAddress) {
		this.organizationAddress = organizationAddress;
	}

	public String getAchievements() {
		return achievements;
	}

	public void setAchievements(String achievements) {
		this.achievements = achievements;
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

	@Override
	public String toString() {
		return "StaffDTO [id=" + id + ", firstName=" + firstName + ", middleName=" + middleName + ", lastName="
				+ lastName + ", address=" + address + ", dob=" + dob + ", age=" + age + ", phoneNumber=" + phoneNumber
				+ ", emailAddress=" + emailAddress + ", gender=" + gender + ", adharNo=" + adharNo + ", knownLang="
				+ knownLang + ", joiningDate=" + joiningDate + ", photoField=" + Arrays.toString(photoField)
				+ ", adharCardField=" + Arrays.toString(adharCardField) + ", joiningPeriod=" + joiningPeriod
				+ ", staffCategory=" + staffCategory + ", qualification=" + qualification + ", institute=" + institute
				+ ", board=" + board + ", marks=" + marks + ", totalWorkExperience=" + totalWorkExperience
				+ ", designation=" + designation + ", organizationAddress=" + organizationAddress + ", achievements="
				+ achievements + ", salaryMonth=" + salaryMonth + ", basicSalary=" + basicSalary
				+ ", dearnessAllowance=" + dearnessAllowance + ", houseAllowance=" + houseAllowance
				+ ", incentiveAllowance=" + incentiveAllowance + ", totalSalary=" + totalSalary + ", cutSalary="
				+ cutSalary + ", netPayable=" + netPayable + ", password=" + password + ", username=" + username
				+ ", role=" + role + "]";
	}

	
}
