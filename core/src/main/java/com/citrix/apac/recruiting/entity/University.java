package com.citrix.apac.recruiting.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "university")
public class University {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name = "name", length = 200,unique=true)
    private String name;

    @Column(name="province", length = 100)
    private String province;
    
    @Column(name="popular")
    private int popularity = 0;
    
    @OneToMany(mappedBy = "university")
    private List<User> users;

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

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public int getPopularity() {
		return popularity;
	}

	public void setPopularity(int popularity) {
		this.popularity = popularity;
	}
   
}
