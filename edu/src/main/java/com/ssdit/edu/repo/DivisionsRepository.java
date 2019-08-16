package com.ssdit.edu.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ssdit.edu.entity.Divisions;

public interface DivisionsRepository  extends CrudRepository<Divisions, Long>{

	public List<Divisions> findAll();
	
	public Divisions findById(long id);
}
