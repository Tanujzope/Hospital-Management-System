package com.myproject.hospital.repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import com.myproject.hospital.pojo.SubscriptionsPojo;

@Repository
public class SubscriptionRepository {
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

	
	public SubscriptionsPojo subscribe(String subsName, String subsEmail) {
		openConnection();
		transaction.begin();
		
		SubscriptionsPojo subscriber = new SubscriptionsPojo();
		subscriber.setName(subsName);
		subscriber.setEmail(subsEmail);
		manager.persist(subscriber);
		
		if (subscriber!= null) {
			transaction.commit();
			closeConnection();
			return subscriber;
		}
		
		transaction.rollback();
		closeConnection();
		return null;
	}

}
