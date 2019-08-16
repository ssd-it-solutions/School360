package com.ssdit.edu.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ssdit.edu.entity.StaffStandardDivisionLink;

public interface StaffStandardDivisionLinkRepository extends CrudRepository<StaffStandardDivisionLink, Long> {

	public StaffStandardDivisionLink save(StaffStandardDivisionLink staffStandardDivisionLink);
	
	//public List<StaffStandardDivisionLink> getByStaffId(long id);
}
