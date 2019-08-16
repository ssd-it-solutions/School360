package com.ssdit.edu.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ssdit.edu.entity.Student;

public interface StudentRepository extends CrudRepository<Student, Long> {
	public Student save(Student student);
	List<Student> findAll();
	public Student findById(long id);
	public void deleteById(long id);
	public List<Student> findByAssignClassAndAssignDivision(String assignClass,String assignDivision);
}