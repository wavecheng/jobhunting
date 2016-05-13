package com.citrix.apac.recruiting.entity;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "exam_city")
@JsonIgnoreProperties(value={"users"})
public class ExamCity implements Serializable {

	@Id
    @GeneratedValue
    private Long id;

    @Column(name = "name", length = 200,unique=true)
    private String name;

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
}
