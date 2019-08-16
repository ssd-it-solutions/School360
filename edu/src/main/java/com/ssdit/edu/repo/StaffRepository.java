package com.ssdit.edu.repo;

import java.util.List;

//import javax.validation.Valid;

import org.springframework.data.repository.CrudRepository;

import com.ssdit.edu.entity.InventoryPurchase;
import com.ssdit.edu.entity.Staff;

public interface StaffRepository extends CrudRepository<Staff, Long> {
	
	public Staff save(Staff staff);
	
	public List<Staff> findAll();
	
	public Staff findById(long id);
	
	public void deleteById(long id);
	
	public List<Staff> findByStaffCategory(String staff_category);

	public Staff findByUsername(String username);
}
	
	 
	 /*  @Query("insert into Staff (first_name,lastName) select :first_name,:lastName from Staff")
	    public int modifyingQueryInsertStaff(@Param("first_name")String first_name, @Param("lastName")String lastName);*/
	   
	 /* List<Staff> findByLastName(String lastName); */

