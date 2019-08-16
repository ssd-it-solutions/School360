package com.ssdit.edu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="divisions")
public class Divisions {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	@Column(name="division")
	private String division;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	@Override
	public String toString() {
		return "Divisions [id=" + id + ", division=" + division + "]";
	}

	
	
}
