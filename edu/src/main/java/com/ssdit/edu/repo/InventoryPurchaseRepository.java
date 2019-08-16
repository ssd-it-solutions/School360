package com.ssdit.edu.repo;

import java.util.List;

//import javax.validation.Valid;

import org.springframework.data.repository.CrudRepository;

import com.ssdit.edu.entity.InventoryPurchase;

public interface InventoryPurchaseRepository extends CrudRepository<InventoryPurchase, Long> {

	public InventoryPurchase save(InventoryPurchase inventoryPurchase);
	
	public List<InventoryPurchase> findAll();
	
	public List<InventoryPurchase> findByCategory(String category);

}
	
	 
	
