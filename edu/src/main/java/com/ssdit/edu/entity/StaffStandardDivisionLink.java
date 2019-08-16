package com.ssdit.edu.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="StaffStandardDivisionLink")
public class StaffStandardDivisionLink {

	@Id
	@Column(name = "id")
	@GeneratedValue
	private Long id;

	@ManyToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	@JoinColumn(name = "standard_id")
	private Standards standards;

	@ManyToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	@JoinColumn(name = "division_id")
	private Divisions division;

	public StaffStandardDivisionLink() {
	}

	public StaffStandardDivisionLink(Staff staff, Standards standards, Divisions division) {
		this.standards = standards;
		this.division = division;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Standards getStandards() {
		return standards;
	}

	public void setStandards(Standards standards) {
		this.standards = standards;
	}

	public Divisions getDivision() {
		return division;
	}

	public void setDivision(Divisions division) {
		this.division = division;
	}

	@Override
	public String toString() {
		return "StaffStandardDivisionLink [id=" + id + ", standards=" + standards + ", division=" + division + "]";
	}

}
