package com.codingdojo.dojo.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.dojo.models.Dojo;
import com.codingdojo.dojo.models.Ninja;
import com.codingdojo.dojo.services.DojoService;

@Controller
public class HomeController {

	@Autowired
	DojoService dojoService;

	@GetMapping("/")
	public String index(Model model) {
		List<Ninja> ninjas = dojoService.allNinjas();
		model.addAttribute("ninjas", ninjas);
		return "index.jsp";
	}

	// create dojo
	@GetMapping("/dojos/add")
	public String addDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "newDojo.jsp";
	}

	@PostMapping("/dojos/add")
	public String processAddDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if (result.hasErrors()) {
			return "newDojo.jsp";
		} else {
			dojoService.saveDojo(dojo);
			return "redirect:/";
		}
	}

	// create ninja
	@GetMapping("/ninjas/add")
	public String addNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		List<Dojo> dojos = dojoService.allDojos();
		model.addAttribute("dojos", dojos);
		return "newNinja.jsp";
	}
	
	@PostMapping("/ninjas/add")
	public String processAddNinja(@Valid @ModelAttribute("ninja")Ninja ninja, BindingResult result, Model model) {
		if (result.hasErrors()) {
			List<Dojo> dojos = dojoService.allDojos();
			model.addAttribute("dojos", dojos);
			return "newNinja.jsp";
		} else {
			dojoService.saveNinja(ninja);
			return "redirect:/";
		}
	}
	
	// find one breed
	@GetMapping("dojos/{dojoId}")
	public String showOneDojo(@PathVariable("dojoId")Long dojoId, Model model) {
		Dojo dojo = dojoService.findOneDojo(dojoId);
		model.addAttribute("dojo", dojo);
		return "show.jsp";
	}
	
}
