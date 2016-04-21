package com.citrix.apac.recruiting.entity;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.engine.profile.Fetch;
import org.hibernate.validator.constraints.Email;

/*
 * @Author boch
 */
@Entity
@Table(name = "workers")
public class Worker {
	
    @Id
    @GeneratedValue
    private Long id;

    @Size(min = 3, message = "Name must be at least 3 characters!")
    @Column(unique = true)
    private String name;

    @Email(message = "Invalid e-mail address!")
    @Size(min = 3, message = "E-mail must be at least 3 characters!")
    private String email;

    @Size(min = 5, message = "Password must be at least 5 characters!")
    private String password;

    @Column(name="enabled")
    private boolean enabled = true;
    
    @Column(name="register_time")
    private Timestamp registerTime = new Timestamp(System.currentTimeMillis());
    
    @OneToMany(mappedBy = "worker", cascade = CascadeType.REMOVE)
    private List<Job> jobs;
    
    @OneToMany(mappedBy = "worker", cascade = CascadeType.REMOVE)
    private List<UserInterview> userInterview;

    @ManyToMany
    @JoinTable(name="worker_x_role")
    private List<WorkerRole> roles;
    
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Timestamp getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Timestamp registerTime) {
		this.registerTime = registerTime;
	}

	public List<Job> getJobs() {
		return jobs;
	}

	public void setJobs(List<Job> jobs) {
		this.jobs = jobs;
	}

	public List<UserInterview> getUserInterview() {
		return userInterview;
	}

	public void setUserInterview(List<UserInterview> userInterview) {
		this.userInterview = userInterview;
	}

	public List<WorkerRole> getRoles() {
		return roles;
	}

	public void setRoles(List<WorkerRole> roles) {
		this.roles = roles;
	}
    
}
