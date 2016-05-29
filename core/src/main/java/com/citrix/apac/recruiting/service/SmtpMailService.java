package com.citrix.apac.recruiting.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class SmtpMailService {

	@Autowired
	private JavaMailSender javaMailSender;
	
	@Value("${mail.smtp.from}")
	private String from;
	
	public void sendMail(String to,String subject, String msgBody) throws MessagingException {
		MimeMessage msg = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(msg,true,"utf-8");
		helper.addTo(to);
		helper.setText(msgBody, true);
		helper.setSubject(subject);
		helper.setFrom(from);
		javaMailSender.send(msg);
	}

}
