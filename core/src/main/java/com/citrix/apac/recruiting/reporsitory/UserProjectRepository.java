package com.citrix.apac.recruiting.reporsitory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.entity.UserEducation;
import com.citrix.apac.recruiting.entity.UserProject;

@Repository("userProjectRepository")
public interface UserProjectRepository extends JpaRepository<UserProject, Long> {

	List<UserProject> findByUserId(Long id);
	
	List<UserProject> findByUser(User user);
	
}
