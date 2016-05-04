package com.citrix.apac.recruiting.reporsitory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.entity.UserExam;
import com.citrix.apac.recruiting.entity.UserInterview;

@Repository("userInterviewRepository")
public interface UserInterviewRepository extends JpaRepository<UserInterview, Long> {

	List<UserInterview> findByUserId(Long id);
	
	List<UserInterview> findByUser(User user);
	

}
