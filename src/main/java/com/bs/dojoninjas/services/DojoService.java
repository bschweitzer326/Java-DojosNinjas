package com.bs.dojoninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.bs.dojoninjas.models.Dojo;
import com.bs.dojoninjas.repositories.DojoRepository;

@Service
public class DojoService {
	private final DojoRepository dojoRepository;
	public DojoService(DojoRepository dojoRepository) {
		this.dojoRepository = dojoRepository;
	}
	
//	brings back all the dojos
	public List<Dojo> allDojos() {
		return dojoRepository.findAll();
	}
	
//	saves a dojo
	public Dojo saveDojo(Dojo a) {
		return dojoRepository.save(a);
	}
	
//	gets a dojo
	public Dojo findDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepository.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		} else {
			return null;
		}
	}
	
//	update dojo
	public void deleteDojo(Long id) {
		dojoRepository.deleteById(id);
	}

}
