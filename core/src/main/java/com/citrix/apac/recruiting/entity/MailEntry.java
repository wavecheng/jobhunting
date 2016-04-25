package com.citrix.apac.recruiting.entity;

import java.sql.Timestamp;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "mail_queue")
public class MailEntry {

	    @Id
	    @GeneratedValue
	    private Long id;

	    @Column(name = "mail_to")
	    private String mailTo;
	    
	    @Column(name = "subject", length = 300)
	    private String subject;
	    
	    @Column(name = "content")
	    @Lob
	    @Basic(fetch=FetchType.EAGER)  
	    private String content;
	    
	    @Column(name="is_sent")
	    private boolean isSent = false;
	    
	    @Column(name="add_time")
	    private Timestamp addTime = new Timestamp(System.currentTimeMillis());

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

		public String getSubject() {
			return subject;
		}

		public void setSubject(String subject) {
			this.subject = subject;
		}

		public boolean isSent() {
			return isSent;
		}

		public void setSent(boolean isSent) {
			this.isSent = isSent;
		}

		public Timestamp getAddTime() {
			return addTime;
		}

		public void setAddTime(Timestamp addTime) {
			this.addTime = addTime;
		}

		public String getMailTo() {
			return mailTo;
		}

		public void setMailTo(String mailTo) {
			this.mailTo = mailTo;
		}
		
}

