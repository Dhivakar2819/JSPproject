package com.chainsys.petwelfaresystem.repository;


import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.model.UsersDetail;

@Repository
public interface PetRepository extends CrudRepository<Pet,Integer> {
	Pet findById(int id);
	@SuppressWarnings("unchecked")
	Pet save(Pet pet);
	void deleteById(int id);
	List<Pet>findAll();
	List<Pet> findByBreedId(int id);
	List<Pet> findByUserId(int id);
}