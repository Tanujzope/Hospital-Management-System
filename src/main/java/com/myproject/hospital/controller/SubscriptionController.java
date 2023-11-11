package com.myproject.hospital.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myproject.hospital.Service.SubscriptionService;
import com.myproject.hospital.email.SubscriptionEmail;
import com.myproject.hospital.pojo.SubscriptionsPojo;

@Controller
public class SubscriptionController {
	@Autowired
	private SubscriptionService service;
	
	@PostMapping(path = "subscribe-user")
	public String subscribe(@RequestParam String subsName, @RequestParam String subsEmail,  ModelMap map) {
		SubscriptionsPojo subscriber = service.subscribe(subsName, subsEmail);
		if (subscriber != null) {
			SubscriptionEmail subscriptionEmail = new SubscriptionEmail();
			String to = subsEmail;
			String from = "tanujzope064@gmail.com";
			String subject = "Probootstrap Health - You Have Subscribed Successfully...";
			String text = "Dear "+ subsName + ",\nYou Have Successfully Subscribed To probootstrap Health and Now you will Receive Updates Regularly...\nThank You";
			boolean mailSend = subscriptionEmail.sendEmail(to, from, subject, text);
			
			if (mailSend) {
				map.addAttribute("subscMsg", "You Have Subscribed Successfully And You Will Receive Daily Updates on Mail");
				return "Home";
			}
			else {
			map.addAttribute("subscMSg", "You Are Subscribed Successfully");
			return "Home";
			}
		}
		map.addAttribute("subscMsg", "Something Went Wrong!!!");
		return "Home";
	}
}
