package com.citrix.apac.recruiting.reporsitory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.entity.UserExam;
import com.citrix.apac.recruiting.entity.UserProject;

@Repository("userExamRepository")
public interface UserExamRepository extends JpaRepository<UserExam, Long> {

	List<UserExam> findByUserId(Long id);
	
	List<UserExam> findByUser(User user);
	
}
