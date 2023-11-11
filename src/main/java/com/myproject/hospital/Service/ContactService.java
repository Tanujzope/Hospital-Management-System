package com.myproject.hospital.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.myproject.hospital.pojo.ContactPojo;
import com.myproject.hospital.repository.ContactRepository;

@Service
public class ContactService {
	
	@Autowired
	private ContactRepository repository;

	public ContactPojo contactForm(String contName, String contEmail, String contMesg) {
		ContactPojo contact = repository.contactForm(contName, contEmail, contMesg);
		return contact;
		
	}

}
