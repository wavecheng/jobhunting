package com.citrix.apac.recruiting.reporsitory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.entity.UserApply;
import com.citrix.apac.recruiting.entity.UserEducation;

@Repository("userApplyRepository")
public interface UserApplyRepository extends JpaRepository<UserApply, Long> {

	List<UserApply> findByUserId(Long id);
	
	List<UserApply> findByUser(User user);
	
}
