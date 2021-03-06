package com.citrix.apac.recruiting.reporsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.ExamCity;

@Repository("examCityRepository")
public interface ExamCityRepository extends JpaRepository<ExamCity, Long> {

}
