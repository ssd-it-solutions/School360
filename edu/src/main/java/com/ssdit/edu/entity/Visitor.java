package com.ssdit.edu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="visitor")
public class Visitor {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
    private long id;

	/* Visitors Information */
	@Column(name="visitDate")
	private String visitDate;
	
	@Column(name="visitorName")
	private String visitorName;
	
	@Column(name="designation")
	private String designation;
	
	@Column(name="residenceVisitDay")
	private String residenceVisitDay;
	
	@Column(name="nonResidenceVisitDay")
	private String nonResidenceVisitDay;
	
	@Column(name="residencePresenceVisit")
	private String residencePresenceVisit;
	
	@Column(name="nonResidencePresenceVisit")
	private String nonResidencePresenceVisit;
	
	@Column(name="residencePresenceAttendanceSheet")
	private String residencePresenceAttendanceSheet;
	
	@Column(name="nonResidencePresenceAttendanceSheet")
	private String nonResidencePresenceAttendanceSheet;
	
	@Column(name="remarks")
	private String remarks;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getVisitDate() {
		return visitDate;
	}

	public void setVisitDate(String visitDate) {
		this.visitDate = visitDate;
	}

	public String getVisitorName() {
		return visitorName;
	}

	public void setVisitorName(String visitorName) {
		this.visitorName = visitorName;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getResidenceVisitDay() {
		return residenceVisitDay;
	}

	public void setResidenceVisitDay(String residenceVisitDay) {
		this.residenceVisitDay = residenceVisitDay;
	}

	public String getNonResidenceVisitDay() {
		return nonResidenceVisitDay;
	}

	public void setNonResidenceVisitDay(String nonResidenceVisitDay) {
		this.nonResidenceVisitDay = nonResidenceVisitDay;
	}

	public String getResidencePresenceVisit() {
		return residencePresenceVisit;
	}

	public void setResidencePresenceVisit(String residencePresenceVisit) {
		this.residencePresenceVisit = residencePresenceVisit;
	}

	public String getNonResidencePresenceVisit() {
		return nonResidencePresenceVisit;
	}

	public void setNonResidencePresenceVisit(String nonResidencePresenceVisit) {
		this.nonResidencePresenceVisit = nonResidencePresenceVisit;
	}

	public String getResidencePresenceAttendanceSheet() {
		return residencePresenceAttendanceSheet;
	}

	public void setResidencePresenceAttendanceSheet(String residencePresenceAttendanceSheet) {
		this.residencePresenceAttendanceSheet = residencePresenceAttendanceSheet;
	}

	public String getNonResidencePresenceAttendanceSheet() {
		return nonResidencePresenceAttendanceSheet;
	}

	public void setNonResidencePresenceAttendanceSheet(String nonResidencePresenceAttendanceSheet) {
		this.nonResidencePresenceAttendanceSheet = nonResidencePresenceAttendanceSheet;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	@Override
	public String toString() {
		return "Visitor [id=" + id + ", visitDate=" + visitDate + ", visitorName=" + visitorName + ", designation="
				+ designation + ", residenceVisitDay=" + residenceVisitDay + ", nonResidenceVisitDay="
				+ nonResidenceVisitDay + ", residencePresenceVisit=" + residencePresenceVisit
				+ ", nonResidencePresenceVisit=" + nonResidencePresenceVisit + ", residencePresenceAttendanceSheet="
				+ residencePresenceAttendanceSheet + ", nonResidencePresenceAttendanceSheet="
				+ nonResidencePresenceAttendanceSheet + ", remarks=" + remarks + "]";
	}
			
}