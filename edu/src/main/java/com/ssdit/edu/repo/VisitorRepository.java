package com.ssdit.edu.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ssdit.edu.entity.Visitor;

public interface VisitorRepository extends CrudRepository<Visitor, Long>{
	public Visitor save(Visitor visitor);
	
	List<Visitor> findAll();
	
	public Visitor findById(long id);
	
	public void deleteById(long id);
}