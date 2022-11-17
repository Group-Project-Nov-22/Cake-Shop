package com.group_project.takes_the_cake.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group_project.takes_the_cake.models.Cake;
import com.group_project.takes_the_cake.repositories.CakeRepository;

@Service
public class CakeService {
	
	@Autowired
	private CakeRepository cakeRepo;
	
	public Cake findById(Long id) {
		Optional<Cake> result = cakeRepo.findById(id);
		if(result.isPresent()) {
			return result.get();
		}
		return null;
	}
	
	public List<Cake> all(){
		return cakeRepo.findAll();
	}
	
	public Cake update(Cake cake) {
		return cakeRepo.save(cake);
	}
	public Cake create(Cake cake) {
		return cakeRepo.save(cake);
	}
	public void delete(Long id) {
		cakeRepo.deleteById(id);
	}
	
}
