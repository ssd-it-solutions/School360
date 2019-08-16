package com.ssdit.edu.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ssdit.edu.entity.EmployeeMonthSalary;

public interface EmployeeMonthSalaryRepository  extends CrudRepository<EmployeeMonthSalary, Long>{

	public EmployeeMonthSalary save (EmployeeMonthSalary ems);
	
	public List<EmployeeMonthSalary> findAllByStaffIdOrderById(long staffId);
	
	public EmployeeMonthSalary findByStaffIdAndMonth(long staffId, String month);
}
