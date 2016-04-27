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
@Table(name = "mail_template")
public class MailTemplate {

	    @Id
	    @GeneratedValue
	    private Long id;

	    @Column(name = "type",unique=true,nullable=false)
	    private String type;
	    
	    @Column(name = "subject", length = 300)
	    private String subject;
	    
	    @Column(name = "subject_param")
	    private String subjectParameters;
	    
	    @Column(name = "content")
	    @Lob
	    @Basic(fetch=FetchType.EAGER)  
	    private String content;
	    
	    @Column(name = "content_param")
	    private String contentParameters;
	    
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

		public Timestamp getAddTime() {
			return addTime;
		}

		public void setAddTime(Timestamp addTime) {
			this.addTime = addTime;
		}

		public String getType() {
			return type;
		}

		public void setType(String type) {
			this.type = type;
		}

		public String getSubjectParameters() {
			return subjectParameters;
		}

		public void setSubjectParameters(String subjectParameters) {
			this.subjectParameters = subjectParameters;
		}

		public String getContentParameters() {
			return contentParameters;
		}

		public void setContentParameters(String contentParameters) {
			this.contentParameters = contentParameters;
		}
		
}

