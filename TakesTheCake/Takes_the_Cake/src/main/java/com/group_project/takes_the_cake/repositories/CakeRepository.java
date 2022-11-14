package com.group_project.takes_the_cake.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.group_project.takes_the_cake.models.Cake;

@Repository
public interface CakeRepository extends CrudRepository<Cake, Long>{
	
	List<Cake> findAll();
}
