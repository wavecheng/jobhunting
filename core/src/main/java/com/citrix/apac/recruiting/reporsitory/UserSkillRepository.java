package com.citrix.apac.recruiting.reporsitory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.entity.UserProject;
import com.citrix.apac.recruiting.entity.UserSkill;

@Repository("userSkillRepository")
public interface UserSkillRepository extends JpaRepository<UserSkill, Long> {

	List<UserSkill> findByUserId(Long id);
	
	List<UserSkill> findByUser(User user);

}
