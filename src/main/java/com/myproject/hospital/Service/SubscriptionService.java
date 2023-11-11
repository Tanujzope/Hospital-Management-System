package com.myproject.hospital.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.hospital.pojo.SubscriptionsPojo;
import com.myproject.hospital.repository.SubscriptionRepository;

@Service
public class SubscriptionService {
	@Autowired
	private SubscriptionRepository repository;

	public SubscriptionsPojo subscribe(String subsName, String subsEmail) {
		SubscriptionsPojo subscriber = repository.subscribe(subsName, subsEmail);
		return subscriber;
	}
	

}
