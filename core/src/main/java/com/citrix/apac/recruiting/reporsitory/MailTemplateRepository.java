package com.citrix.apac.recruiting.reporsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.MailTemplate;

@Repository("mailTemplateRepository")
public interface MailTemplateRepository extends JpaRepository<MailTemplate, Long> {

	MailTemplate findByType(String type);
	
}
