package com.citrix.apac.recruiting.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.citrix.apac.recruiting.entity.Enums.InterviewResult;

/**
 * @author boch
 */
@Entity
@Table(name = "user_interview")
public class UserInterview {
	
    @Id
    @GeneratedValue
    private Long id;
   
    @Column(name="vote_up")
    private int voteUp;

    @Column(name="vote_down")
    private int voteDown;
    
    @Column(name="interviewers")
    private String interviewers;
    
    @Column(name="status",nullable=false)
    @Enumerated(EnumType.STRING)
    private InterviewResult status = InterviewResult.Neutral;
    
    @Column(name="remark", length=255)
    private String remark;

    @Column(name="schedule_time")
    private Timestamp scheduleTime;
    
    @Column(name="interview_time")
    private Timestamp interviewTime = new Timestamp(System.currentTimeMillis());

    @ManyToOne
    private User user;

    @ManyToOne
    private Job job;

    @ManyToOne
    private Worker worker;
    
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getVoteUp() {
		return voteUp;
	}

	public void setVoteUp(int voteUp) {
		this.voteUp = voteUp;
	}

	public int getVoteDown() {
		return voteDown;
	}

	public void setVoteDown(int voteDown) {
		this.voteDown = voteDown;
	}

	public String getInterviewers() {
		return interviewers;
	}

	public void setInterviewers(String interviewers) {
		this.interviewers = interviewers;
	}

	public InterviewResult getStatus() {
		return status;
	}

	public void setStatus(InterviewResult status) {
		this.status = status;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Timestamp getScheduleTime() {
		return scheduleTime;
	}

	public void setScheduleTime(Timestamp scheduleTime) {
		this.scheduleTime = scheduleTime;
	}

	public Timestamp getInterviewTime() {
		return interviewTime;
	}

	public void setInterviewTime(Timestamp interviewTime) {
		this.interviewTime = interviewTime;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Job getJob() {
		return job;
	}

	public void setJob(Job job) {
		this.job = job;
	}

}
