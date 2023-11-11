package com.myproject.hospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import net.bytebuddy.matcher.ModifierMatcher.Mode;

@Controller
public class HospitalController {
	@GetMapping("/home")
	public String homePage() {
		return "Home";
	}
	
	@GetMapping("/about")
	public String about(Model model) {
		model.addAttribute("pageName", "About");
		return "Template";
	}
	
	@GetMapping("/contact")
	public String contact(Model model) {
		model.addAttribute("pageName", "Contact");
		return "Template";
	}
	
	@GetMapping("/department")
	public String department(Model model) {
		model.addAttribute("pageName", "Department");
		return "Template";
	}
	
}
