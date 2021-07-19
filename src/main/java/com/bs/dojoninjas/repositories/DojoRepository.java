package com.bs.dojoninjas.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bs.dojoninjas.models.Dojo;

@Repository
public interface DojoRepository extends CrudRepository<Dojo, Long>{
	
//	gets all the dojos from the database
	List<Dojo> findAll();
	
	Optional<Dojo> findById(Long z);
	
	void deleteById(Long Id);
	
	Dojo save(Dojo dojo);
	
}
