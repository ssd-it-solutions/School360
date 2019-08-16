package com.ssdit.edu.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ssdit.edu.entity.Setting;



public interface SettingRepository extends CrudRepository<Setting, Long>{
	public Setting save(Setting setting);
	
	List<Setting> findAll();
	
	public Setting findById(long id);
}