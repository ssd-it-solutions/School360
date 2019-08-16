package com.ssdit.edu.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="standards")
public class Standards {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	@Column(name="standard")
	private String standard;
	
	 
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	@Override
	public String toString() {
		return "Standards [id=" + id + ", standard=" + standard + "]";
	}
 
	
}
