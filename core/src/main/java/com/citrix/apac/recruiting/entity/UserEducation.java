package com.citrix.apac.recruiting.entity;

import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.citrix.apac.recruiting.entity.Enums.EduLevel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * @author boch
 * 用户教育历史记录
 */
@Entity
@Table(name = "user_edu", uniqueConstraints=@UniqueConstraint(columnNames={"university","degree"}))
@JsonIgnoreProperties(value={"user"})
public class UserEducation {
	
    @Id
    @GeneratedValue
    private Long id;

    @Column(name="from_date")
    private Date fromDate;
    
    @Column(name="to_date")
    private Date toDate;
    
    @Column(name="university")
    private String university;
  
    @Column(name="major")
    private String major;
    
    @Column(name="degree")
    @Enumerated(EnumType.STRING)
    private EduLevel degree;

    @Column(name="total_rank")
    private int totalRank;
   
    @Column(name="remark")
    @Lob
    @Basic(fetch=FetchType.LAZY)  
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

	public Date getFromDate() {
		return fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	public Date getToDate() {
		return toDate;
	}

	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public EduLevel getDegree() {
		return degree;
	}

	public void setDegree(EduLevel degree) {
		this.degree = degree;
	}

	public int getTotalRank() {
		return totalRank;
	}

	public void setTotalRank(int totalRank) {
		this.totalRank = totalRank;
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
