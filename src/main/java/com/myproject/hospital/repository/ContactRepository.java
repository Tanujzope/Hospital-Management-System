package com.myproject.hospital.repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import com.myproject.hospital.pojo.ContactPojo;

@Repository
public class ContactRepository {
	
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

	public ContactPojo contactForm(String contName, String contEmail, String contMesg) {
		openConnection();
		transaction.begin();
		
		ContactPojo contact = new ContactPojo();
		contact.setName(contName);
		contact.setEmail(contEmail);
		contact.setMsg(contMesg);
		manager.persist(contact);
		
		if (contact != null) {
			transaction.commit();
			closeConnection();
			return contact;
		}
		
		transaction.rollback();
		closeConnection();
		return null;
	}

}
