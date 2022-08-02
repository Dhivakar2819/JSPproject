package com.chainsys.petwelfaresystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.petwelfaresystem.Services.PetServices;
import com.chainsys.petwelfaresystem.dto.PetBreedDTO;
import com.chainsys.petwelfaresystem.dto.PetVaccineDto;
import com.chainsys.petwelfaresystem.model.Pet;

@Controller
@RequestMapping("/pet")
public class PetController {
	@Autowired
	PetServices petServices;
	@GetMapping("/listpet")
	public String getFindAllPet(Model model) {
		List<Pet>pet=petServices.getPet();
		model.addAttribute("allPets",pet);
		return "list-pet";
	}
	@GetMapping("/addpet")
	public String showAddPet(Model model){
		Pet pet=new Pet();
		model.addAttribute("addpet",pet);
		return "add-pet-form";
	}
	@PostMapping("/addnewpet")
	public String addNewPet(@ModelAttribute("addpet") Pet pet) {
		petServices.save(pet);
		return "redirect:/pet/list";
	}
	@GetMapping("/updateformpet")
	public String showUpdatePet(@RequestParam("petid") int id, Model model ){
		Pet pet=petServices.findById(id);
		model.addAttribute("updatepet",pet);
		return "update-pet-form";
	}

	@PostMapping("/updatepets")
	public String UpdatePet(@ModelAttribute("updatepet") Pet pet) {
		petServices.save(pet);
		return "redirect:/pet/list";
	}
	@GetMapping("/deletepet")
	public String deletePet(@RequestParam("petid") int id) {
		petServices.deleteById(id);
		return "redirect:/pet/list";
	}
	
	@GetMapping("/getpet")
	public String getpet(@RequestParam("petid") int id,Model model)
	{
		Pet pet=petServices.findById(id);
		model.addAttribute("findpetbyid",pet);
		return "find-pet-by-id";
	}
	@GetMapping("/getvaccinebypetid")
	public String GetPetDisease(@RequestParam("id") int id,Model model) {
		PetVaccineDto dto=petServices.getPetAndVaccine(id);
		model.addAttribute("getpet",dto.getPet());
		model.addAttribute("vaccinelist",dto.getVaccineDateList());
		return "list-pet-vaccine";
	}
}
