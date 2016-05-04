package com.citrix.apac.recruiting.reporsitory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.entity.UserWork;

@Repository("userWorkRepository")
public interface UserWorkRepository extends JpaRepository<UserWork, Long> {

	List<UserWork> findByUserId(Long id);
	
	List<UserWork> findByUser(User user);
	
}
