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

import com.citrix.apac.recruiting.entity.Enums.SkillLevel;

/**
 * @author boch
 */
@Entity
@Table(name = "user_skill")
public class UserSkill {
	
    @Id
    @GeneratedValue
    private Long id;
   
    @Column(name="name", unique=true)
    private String name;

    @Column(name="months")
    private int months;
    
    @Column(name="major")
    private String major;
    
    @Column(name="level")
    @Enumerated(EnumType.STRING)
    private SkillLevel level;
    
    @Column(name="remark", length=255)
    private String remark;
    
    @Column(name="update_time")
    private Timestamp updateTime = new Timestamp(System.currentTimeMillis());
    
    @ManyToOne
    private User user;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getMonths() {
		return months;
	}

	public void setMonths(int months) {
		this.months = months;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public SkillLevel getLevel() {
		return level;
	}

	public void setLevel(SkillLevel level) {
		this.level = level;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
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

}
