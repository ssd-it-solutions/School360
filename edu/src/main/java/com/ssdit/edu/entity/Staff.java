package com.ssdit.edu.entity;

import java.util.Arrays;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * @author Dell
 *
 */
@Entity
@Table(name="staff")
public class Staff {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	/* Personal information */
	@Column(name="firstName")
	private String firstName;
	
	@Column(name="middleName")
	private String middleName;
	
	@Column(name="lastName")
	private String lastName;
	
	@Column(name="address")
	private String address;
	
	@Column(name="dob")
	private String dob;
	
	@Column(name="age")
	private String age;
	
	@Column(name="phoneNumber")
	private String phoneNumber;
	
	@Column(name="emailAddress")
	private String emailAddress;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="adharNo")
	private String adharNo;
	
	@Column(name="knownLang")
	private String knownLang;
	
	@Column(name="joiningDate")
	private String joiningDate;
	
	@Column(name="photo")
	private byte[] photoField;
	
	@Column(name="adhar")
	private byte[] adharCardField;
	
	@Column(name="password")
	private String password;
	
	@Column(name="username")
	private String username;
	
	@Column(name="role")
	private String role;
	
	@Column(name="joiningPeriod")
	private String joiningPeriod;
	
	@Column(name="staffCategory")
	private String staffCategory;
	
	@OneToMany( targetEntity=StaffStandardDivisionLink.class )
	@JoinColumn(name = "staff_id")
	private List<StaffStandardDivisionLink> assignClassDivisionList;
	
	@OneToMany(mappedBy = "staff", cascade = CascadeType.ALL)
    private List<EmployeeMonthSalary> employeeMonthSalary;
	
	@JsonIgnore
	public List<StaffStandardDivisionLink> getAssignClassDivisionList() {
		return assignClassDivisionList;
	}

	@JsonIgnore
	public void setAssignClassDivisionList(List<StaffStandardDivisionLink> assignClassDivisionList) {
		this.assignClassDivisionList = assignClassDivisionList;
	}

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

	/* Educational Details */
	@Column(name="qualification")
	private String qualification;
	
	@Column(name="institute")
	private String institute;
	
	@Column(name="board")
	private String board;
	
	@Column(name="marks")
	private String marks;
	
	/* Work Experience */
	@Column(name="totalWorkExperience")
	private String totalWorkExperience;
	
	@Column(name="designation")
	private String designation;
	
	@Column(name="organizationAddress")
	private String organizationAddress;
		
	@Column(name="achievements")
	private String achievements;
	
	
	/* Salary Details */
	@Column(name="salaryMonth")
	private String salaryMonth;
	
	@Column(name="basicSalary")
	private String basicSalary;
	
	@Column(name="dearnessAllowance")
	private String dearnessAllowance;
	
	@Column(name="houseAllowance")
	private String houseAllowance;
	
	@Column(name="incentiveAllowance")
	private String incentiveAllowance;
	
	@Column(name="totalSalary")
	private String totalSalary;
	
	@Column(name="cutSalary")
	private String cutSalary;
	
	@Column(name="netPayable")
	private String netPayable;
	
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

	public void setPhotoField(byte[] photo) {
		this.photoField = photo;
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

	@Override
	public String toString() {
		return "Staff [id=" + id + ", firstName=" + firstName + ", middleName=" + middleName + ", lastName=" + lastName
				+ ", address=" + address + ", dob=" + dob + ", age=" + age + ", phoneNumber=" + phoneNumber
				+ ", emailAddress=" + emailAddress + ", gender=" + gender + ", adharNo=" + adharNo + ", knownLang="
				+ knownLang + ", joiningDate=" + joiningDate + ", photoField=" + Arrays.toString(photoField)
				+ ", adharCardField=" + Arrays.toString(adharCardField) + ", password=" + password + ", joiningPeriod="
				+ joiningPeriod + ", staffCategory=" + staffCategory + ", qualification=" + qualification
				+ ", institute=" + institute + ", board=" + board + ", marks=" + marks + ", totalWorkExperience="
				+ totalWorkExperience + ", designation=" + designation + ", organizationAddress=" + organizationAddress
				+ ", achievements=" + achievements + ", salaryMonth=" + salaryMonth + ", basicSalary=" + basicSalary
				+ ", dearnessAllowance=" + dearnessAllowance + ", houseAllowance=" + houseAllowance
				+ ", incentiveAllowance=" + incentiveAllowance + ", totalSalary=" + totalSalary + ", cutSalary="
				+ cutSalary + ", netPayable=" + netPayable + "]";
	}

	

}
