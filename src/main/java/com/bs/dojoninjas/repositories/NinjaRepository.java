package com.bs.dojoninjas.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bs.dojoninjas.models.Ninja;

@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long>{

//	gets all the ninjas from the database
	List<Ninja> findAll();
	
	Optional<Ninja> findById(Long z);
	
	void deleteById(Long Id);
	
	Ninja save(Ninja ninja);

	
	
	
}
