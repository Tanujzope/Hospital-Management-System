package com.myproject.hospital.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myproject.hospital.Service.ContactService;
import com.myproject.hospital.email.ContactEmail;
import com.myproject.hospital.pojo.ContactPojo;

@Controller
public class ContactController {
	@Autowired
	private ContactService service;
	
	@PostMapping(path = "contact-us")
	public String contactForm(@RequestParam String contName, @RequestParam String contEmail, @RequestParam String contMesg, ModelMap map, Model model ) {
		ContactPojo contact = service.contactForm(contName, contEmail, contMesg);
		if (contact != null) {
			ContactEmail contactEmail = new ContactEmail();
			String to = contEmail;
			String from = "tanujzope064@gmail.com";
			String subject = "Probootstrap Health - Contact Enquiery received";
			String text = "Dear "+ contName +",\nWe HAve Received Your Contact Related Form And We wiil Contact you shortely...\nThank You" ;
			boolean  mailSend = contactEmail.sendEmail(to, from, subject, text);
			if (mailSend) {
				map.addAttribute("contMsg", "We Received Your Message, We Sent You an Email...");
				model.addAttribute("pageName", "Contact");
				return "Template";
			}
			map.addAttribute("contMsg", "We Received Your Message, We Will contact you Shortely...");
			model.addAttribute("pageName", "Contact");
			return "Template";
			
		}
		map.addAttribute("contMsg", "Something Went Wrong!!!");
		model.addAttribute("pageName", "Contact");
		return "Template";
		
	}
}
