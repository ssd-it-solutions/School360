package com.ssdit.edu.repo;

import java.util.List;

//import javax.validation.Valid;

import org.springframework.data.repository.CrudRepository;

import com.ssdit.edu.entity.Vendor;
import com.ssdit.edu.dto.VendorDTO;

public interface VendorRepository extends CrudRepository<Vendor, Long> {
	
	public Vendor save(Vendor vendor);
	
	List<Vendor> findAll();
	
	public Vendor findById(long id);
	
	public void deleteById(long id);
	

	
}
	
	 
	
