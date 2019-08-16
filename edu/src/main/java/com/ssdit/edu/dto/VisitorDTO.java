package com.ssdit.edu.dto;

public class VisitorDTO {
	
	private long id;
	
	/*** Visitor Information  **/
	
	private String visitDate;
	private String visitorName;
	private String designation;
	private String residenceVisitDay;
	private String nonResidenceVisitDay;
	private String residencePresenceVisit;
	private String nonResidencePresenceVisit;
	private String residencePresenceAttendanceSheet;
	private String nonResidencePresenceAttendanceSheet;
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
		return "VisitorDTO [id=" + id + ", visitDate=" + visitDate + ", visitorName=" + visitorName + ", designation="
				+ designation + ", residenceVisitDay=" + residenceVisitDay + ", nonResidenceVisitDay="
				+ nonResidenceVisitDay + ", residencePresenceVisit=" + residencePresenceVisit
				+ ", nonResidencePresenceVisit=" + nonResidencePresenceVisit + ", residencePresenceAttendanceSheet="
				+ residencePresenceAttendanceSheet + ", nonResidencePresenceAttendanceSheet="
				+ nonResidencePresenceAttendanceSheet + ", remarks=" + remarks + "]";
	}
	
}