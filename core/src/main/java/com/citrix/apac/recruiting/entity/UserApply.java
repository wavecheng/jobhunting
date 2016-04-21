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

import com.citrix.apac.recruiting.entity.Enums.ApplyStatus;

/**
 * @author boch
 */
@Entity
@Table(name = "user_apply")
public class UserApply {
	
    @Id
    @GeneratedValue
    private Long id;
   
    @Column(name="worker_name")
    private String wokerName;
    
    @Column(name="apply_status",nullable=false,unique=true)
    @Enumerated(EnumType.STRING)
    private ApplyStatus status = ApplyStatus.Applying;
    
    @Column(name="remark", length=255)
    private String remark;
    
    @Column(name="apply_time")
    private Timestamp applyTime = new Timestamp(System.currentTimeMillis());

    @Column(name="update_time")
    private Timestamp updateTime;
    
    @ManyToOne
    private User user;

    @ManyToOne
    private Job job;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getWokerName() {
		return wokerName;
	}

	public void setWokerName(String wokerName) {
		this.wokerName = wokerName;
	}

	public ApplyStatus getStatus() {
		return status;
	}

	public void setStatus(ApplyStatus status) {
		this.status = status;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Timestamp getApplyTime() {
		return applyTime;
	}

	public void setApplyTime(Timestamp applyTime) {
		this.applyTime = applyTime;
	}

	public Timestamp getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
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
