package com.bs.dojoninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bs.dojoninjas.models.Dojo;
import com.bs.dojoninjas.models.Ninja;
import com.bs.dojoninjas.services.DojoService;
import com.bs.dojoninjas.services.NinjaService;

@Controller
public class MainController {
	
	private final DojoService dojoService;
	private final NinjaService ninjaService;
	public MainController(DojoService dojoService, NinjaService ninjaService) {
		this.dojoService = dojoService;
		this.ninjaService = ninjaService;
	}

//=============================
//	dojo page
//=============================   

	@RequestMapping("/dojos/new") 
		public String dojo(Model model) {
			model.addAttribute("dojo", new Dojo());
			return "newdojo.jsp";
		}
	
	@RequestMapping(value="/createdojo", method=RequestMethod.POST)
	public String createDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "newdojo.jsp";
		} else {
			dojoService.saveDojo(dojo);
			return "redirect:/ninjas/new";
		}
	}
	
//=============================
//	ninja page
//=============================   	
	
	@RequestMapping("/ninjas/new") 
	public String ninja(Model model) {
		List<Dojo> dojos = dojoService.allDojos();
		model.addAttribute("dojo", dojos);
		
		model.addAttribute("ninja", new Ninja());
		return "newninja.jsp";
	}
	
	@RequestMapping(value="/createninja", method=RequestMethod.POST)
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {
		if(result.hasErrors()) {
			return "newninja.jsp";
		} else {
			ninjaService.saveNinja(ninja);
			return "redirect:/dojos/new";
		}
	}
	
//=============================
//	view dojo page
//=============================  
	
	@RequestMapping("/dojos/{id}") 
	public String view(@PathVariable("id") Long id, Model model) {
		Dojo ojod = dojoService.findDojo(id);
		model.addAttribute("dojo", ojod);
		return "view.jsp";
	}
	
}
