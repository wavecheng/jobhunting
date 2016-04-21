package com.citrix.apac.recruiting.reporsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.citrix.apac.recruiting.entity.UserEducation;

@Repository("userEducationRepository")
public interface UserEducationRepository extends JpaRepository<UserEducation, Long> {


}
