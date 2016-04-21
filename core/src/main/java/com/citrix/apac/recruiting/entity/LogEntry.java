package com.citrix.apac.recruiting.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "logs")
public class LogEntry {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name = "content", length = 300)
    private String content;

    @Column(name="log_type",nullable=false)
    @Enumerated(EnumType.STRING)
    private LogType logType;
    
    @Column(name="worker_id")
    private Long workerId;
    
    @Column(name = "worker_name")
    private String wokerName;

    @Column(name="user_id")
    private Long userId;
    
    @Column(name = "user_name")
    private String userName;

    @Column(name="job_id")
    private Long jobId;
    
    @Column(name = "job_name")
    private String jobName;
    
    @Column(name="log_time")
    private Timestamp logTime = new Timestamp(System.currentTimeMillis());

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

	public LogType getLogType() {
		return logType;
	}

	public void setLogType(LogType logType) {
		this.logType = logType;
	}

	public Long getWorkerId() {
		return workerId;
	}

	public void setWorkerId(Long workerId) {
		this.workerId = workerId;
	}

	public String getWokerName() {
		return wokerName;
	}

	public void setWokerName(String wokerName) {
		this.wokerName = wokerName;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Long getJobId() {
		return jobId;
	}

	public void setJobId(Long jobId) {
		this.jobId = jobId;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public Timestamp getLogTime() {
		return logTime;
	}

	public void setLogTime(Timestamp logTime) {
		this.logTime = logTime;
	}
    
}
