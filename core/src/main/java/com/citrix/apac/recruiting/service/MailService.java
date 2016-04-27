package com.citrix.apac.recruiting.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citrix.apac.recruiting.entity.MailEntry;
import com.citrix.apac.recruiting.entity.MailTemplate;
import com.citrix.apac.recruiting.reporsitory.MailEntryRepository;
import com.citrix.apac.recruiting.reporsitory.MailTemplateRepository;

@Service
@Transactional
public class MailService {

	@Autowired
	private MailEntryRepository mailRepository;
	
	@Autowired
	private MailTemplateRepository mailTemplateRepository;
	

	public List<MailEntry> getAllUnsendMails(){
		return mailRepository.findSendingQueue();
	}
	
	public void composeMailFromTemplate(String mailTo, String type, Map<String,Object> subjectParamter, Map<String,Object> contentParameter){
		MailTemplate mt = mailTemplateRepository.findByType(type);
		MailEntry mail = new MailEntry();
		if(mt == null)
			throw new NullPointerException("No mail template found by type [" + type + "]" );
		
		mail.setMailTo(mailTo);
		String subject = mt.getSubject();
		if(subjectParamter != null && subjectParamter.size() > 0){			
			for (Map.Entry<String, Object> entry : subjectParamter.entrySet()){
				subject = subject.replaceAll(entry.getKey(), entry.getValue().toString());
			}
		}
		mail.setSubject(subject);
		
		String content  = mt.getContent();
		if(contentParameter != null && contentParameter.size() > 0){			
			for (Map.Entry<String, Object> entry : contentParameter.entrySet()){
				content = content.replaceAll(entry.getKey(), entry.getValue().toString());
			}
		}
		mail.setContent(content);
		mail.setSent(false);
		
		mailRepository.save(mail);

	}
}
