package com.citrix.apac.recruiting.reporsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.UserSkill;

@Repository("userSkillRepository")
public interface UserSkillRepository extends JpaRepository<UserSkill, Long> {


}
