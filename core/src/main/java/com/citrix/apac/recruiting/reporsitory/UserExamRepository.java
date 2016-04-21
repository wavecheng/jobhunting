package com.citrix.apac.recruiting.reporsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.citrix.apac.recruiting.entity.UserExam;

@Repository("userExamRepository")
public interface UserExamRepository extends JpaRepository<UserExam, Long> {


}
