package com.myproject.hospital.email;

import java.util.Properties;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

public class SubscriptionEmail {
	public boolean sendEmail(String to, String from,String subject, String text ) {
		boolean flag = false;
		
		Properties properties = new Properties();
		properties.put("mail.smtp.auth", true);
		properties.put("mail.smtp.starttls.enable", true);
		properties.put("mail.smtp.starttls.port", "587");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		
		final String username = "tanujzope064";
		final String password = "nqds yytf kcyt zond";
		
		Session session = Session.getInstance(properties, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		
		try {
			Message message = new MimeMessage(session);
			
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setFrom(new InternetAddress(from));
			message.setSubject(subject);
			message.setText(text);
			
			Transport.send(message);
			flag = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return flag;
	}
}
