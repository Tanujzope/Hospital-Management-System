package com.myproject.hospital.Service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.hospital.pojo.AppointmentPojo;
import com.myproject.hospital.repository.AppointmentRepository;

@Service
public class AppointmentService {
	@Autowired
	private AppointmentRepository repository;

	

	public AppointmentPojo bookAppointment(String name, String email, String appointmentDate, String message) {
		AppointmentPojo pojo = repository.bookAppointment(name, email, appointmentDate, message);
		return pojo;
	}
}
