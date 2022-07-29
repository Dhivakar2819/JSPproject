package com.chainsys.petwelfaresystem.repository;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.petwelfaresystem.pojo.Pet;


public interface PetRepository extends CrudRepository<Pet,Integer> {
	Pet findById(int id);
	Pet save(Pet pet);
	void deleteById(int id);
	List<Pet>findAll();
}