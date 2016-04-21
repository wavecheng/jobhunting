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

import com.citrix.apac.recruiting.entity.Enums.CompanyType;
import com.citrix.apac.recruiting.entity.Enums.TimeType;

/**
 * @author boch
 */
@Entity
@Table(name = "user_work")
public class UserWork {
	
    @Id
    @GeneratedValue
    private Long id;

    @Column(name="from_date")
    private Date fromDate;
    
    @Column(name="to_date")
    private Date toDate;
    
    @Column(name="company",unique=true)
    private String company;

    @Column(name="company_size")
    private int companySize;
    
    @Column(name="company_type")
    @Enumerated(EnumType.STRING)
    private CompanyType companyType;

    @Column(name="time_type")
    @Enumerated(EnumType.STRING)
    private TimeType timeType;
    
    @Column(name="position")
    private String position;
    
    @Column(name="description")
    @Lob
    @Basic(fetch=FetchType.LAZY)  
    private String description;
    
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

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public int getCompanySize() {
		return companySize;
	}

	public void setCompanySize(int companySize) {
		this.companySize = companySize;
	}

	public CompanyType getCompanyType() {
		return companyType;
	}

	public void setCompanyType(CompanyType companyType) {
		this.companyType = companyType;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	public TimeType getTimeType() {
		return timeType;
	}

	public void setTimeType(TimeType timeType) {
		this.timeType = timeType;
	}

}
