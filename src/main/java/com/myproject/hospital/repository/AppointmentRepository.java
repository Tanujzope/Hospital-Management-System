package com.myproject.hospital.repository;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import com.myproject.hospital.pojo.AppointmentPojo;

@Repository
public class AppointmentRepository {
	
	private static EntityManagerFactory factory;
	private static EntityManager manager;
	private static EntityTransaction transaction;
	
	private static void openConnection() {
		factory = Persistence.createEntityManagerFactory("hospital");
		manager = factory.createEntityManager();
		transaction = manager.getTransaction();
	}
	
	private static void closeConnection() {
		if (factory != null) {
			factory.close();
		}
		if (manager!= null) {
			manager.close();
		}
		if (transaction != null) {
			if (transaction.isActive()) {
				transaction.commit();
			}
		}
	}

	

	
	@SuppressWarnings("finally")
	public AppointmentPojo bookAppointment(String name, String email, String appointmentDate, String message) {
		openConnection();
		transaction.begin();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date;
		try {
			date = format.parse(appointmentDate);
		
		
		AppointmentPojo appointment = new AppointmentPojo();
		appointment.setName(name);
		appointment.setEmail(email);
		appointment.setAppointmentDate(date);
		appointment.setMessage(message);
		
		manager.persist(appointment);
		
		
		if (appointment != null) {
			transaction.commit();
			closeConnection();
			return appointment;
		}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		transaction.commit();
		closeConnection();
		return null;
	}

}
