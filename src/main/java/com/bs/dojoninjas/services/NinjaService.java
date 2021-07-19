package com.bs.dojoninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.bs.dojoninjas.models.Ninja;
import com.bs.dojoninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	
	private final NinjaRepository ninjaRepository;
	public NinjaService(NinjaRepository ninjaRepository) {
		this.ninjaRepository = ninjaRepository;
	}
	
//	brings back all the Ninjas
	public List<Ninja> allNinjas() {
		return ninjaRepository.findAll();
	}
	
//	saves a Ninja
	public Ninja saveNinja(Ninja a) {
		return ninjaRepository.save(a);
	}
	
//	gets a Ninja
	public Ninja findNinja(Long id) {
		Optional<Ninja> optionalNinja = ninjaRepository.findById(id);
		if(optionalNinja.isPresent()) {
			return optionalNinja.get();
		} else {
			return null;
		}
	}
	
//	update Ninja
	public void deleteNinja(Long id) {
		ninjaRepository.deleteById(id);
	}

}
