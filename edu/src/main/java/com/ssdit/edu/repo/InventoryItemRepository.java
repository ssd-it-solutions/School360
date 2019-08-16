package com.ssdit.edu.repo;

import java.util.List;

//import javax.validation.Valid;

import org.springframework.data.repository.CrudRepository;

import com.ssdit.edu.entity.InventoryItem;

public interface InventoryItemRepository extends CrudRepository<InventoryItem, Long> {

	public List<InventoryItem> findItemByType(String type);
	public InventoryItem findById(long id);

}
	
	 
	
