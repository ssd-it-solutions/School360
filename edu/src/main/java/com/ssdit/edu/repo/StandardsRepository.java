package com.ssdit.edu.repo;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.ssdit.edu.entity.Standards;

public interface StandardsRepository extends CrudRepository<Standards, Long> {

	public List<Standards> findAll();
	
	public Standards findById(long id);
}
