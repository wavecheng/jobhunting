package com.citrix.apac.recruiting.entity;

import javax.persistence.*;

import com.citrix.apac.recruiting.entity.Enums.JobStatus;
import com.citrix.apac.recruiting.entity.Enums.TimeType;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

@Entity
@Table(name = "job")
public class Job {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name = "title", length = 300,nullable=false)
    private String title;

    @Column(name="hire_count")
    private int hireCount = 0;
    
    @Column(name="job_type",nullable=false)
    @Enumerated(EnumType.STRING)
    private TimeType timeType = TimeType.FullTime;
    
    @Column(name="is_campus")
    private boolean onlyCampus = false;
    
    @Column(name="from_date")
    private Date fromDate;
    
    @Column(name="to_date")
    private Date toDate;
    
    @Column(name="status")
    @Enumerated(EnumType.STRING)
    private JobStatus status = JobStatus.Ongoing;
    
    @Column(name="update_time")
    private Timestamp updateTime = new Timestamp(System.currentTimeMillis());
    
    @Column(name="work_location")
    private String workLocation;
    
    @Column(name="description")
    @Lob
    @Basic(fetch=FetchType.LAZY)  
    private String description;
    
    @ManyToOne
    private Worker worker;

    @OneToMany(mappedBy="job")
    private List<UserApply> userApply;
    
    @OneToMany(mappedBy="job")
    private List<UserExam> userExam;
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getHireCount() {
		return hireCount;
	}

	public void setHireCount(int hireCount) {
		this.hireCount = hireCount;
	}

	public TimeType getTimeType() {
		return timeType;
	}

	public void setTimeType(TimeType timeType) {
		this.timeType = timeType;
	}

	public boolean isOnlyCampus() {
		return onlyCampus;
	}

	public void setOnlyCampus(boolean onlyCampus) {
		this.onlyCampus = onlyCampus;
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

	public JobStatus getStatus() {
		return status;
	}

	public void setStatus(JobStatus status) {
		this.status = status;
	}

	public Timestamp getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	public String getWorkLocation() {
		return workLocation;
	}

	public void setWorkLocation(String workLocation) {
		this.workLocation = workLocation;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Worker getWorker() {
		return worker;
	}

	public void setWorker(Worker worker) {
		this.worker = worker;
	}

	public List<UserApply> getUserApply() {
		return userApply;
	}

	public void setUserApply(List<UserApply> userApply) {
		this.userApply = userApply;
	}

	public List<UserExam> getUserExam() {
		return userExam;
	}

	public void setUserExam(List<UserExam> userExam) {
		this.userExam = userExam;
	}

}
