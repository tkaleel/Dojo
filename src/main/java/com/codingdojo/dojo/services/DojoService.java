package com.codingdojo.dojo.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.dojo.models.Dojo;
import com.codingdojo.dojo.models.Ninja;
import com.codingdojo.dojo.repositories.DojoRepo;
import com.codingdojo.dojo.repositories.NinjaRepo;

@Service
public class DojoService {
	
	@Autowired
	DojoRepo dojoRepo;
	
	@Autowired
	NinjaRepo ninjaRepo;

	
	public List<Ninja> allNinjas(){
		return ninjaRepo.findAll();
	}
	
	public List<Dojo> allDojos(){
		return dojoRepo.findAll();
	}
	
	
	public Ninja saveNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	
	public Dojo saveDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
	
	public Dojo findOneDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepo.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		}else {
			return null;
		} 
	}
	
}
