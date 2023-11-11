package com.myproject.hospital.controller;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.myproject.hospital.Service.AppointmentService;
import com.myproject.hospital.email.AppointmentEmail;
import com.myproject.hospital.pojo.AppointmentPojo;

@Controller
public class AppointmentController {
	
	@Autowired
	private AppointmentService service;
	
	
	@PostMapping("/book-appointment")
	public String bookAppointment(@RequestParam String name, @RequestParam String email, @RequestParam String appointmentDate, @RequestParam String message, ModelMap map) {
		AppointmentPojo appointment = service.bookAppointment(name, email, appointmentDate, message);
		if (appointment != null) {
			AppointmentEmail appointmail = new AppointmentEmail();
			String to = email;
			String from= "tanujzope064@gmail.com";
			String subject = "Probootstrap Health - Your Appointment Booked Successfully...";
			String text = "Dear "+ name + ",\nYour Appointment is booked successfully on "+ appointmentDate;
			boolean mailSent = appointmail.sendEmail(to, from, subject, text);
			if (mailSent) {
				map.addAttribute("bookMsg", "Your Appointment is booked, Details Shared on Your Email...");
			}
			else {
				map.addAttribute("bookMsg", "Appointment Booked Successfully...");
			}
			
			return "Home";
		}
		map.addAttribute("bookMsg", "Something went Wrong!!!");
		return "Home";
	}
}
