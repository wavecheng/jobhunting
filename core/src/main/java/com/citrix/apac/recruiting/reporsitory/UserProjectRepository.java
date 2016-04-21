package com.citrix.apac.recruiting.reporsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.UserProject;

@Repository("userProjectRepository")
public interface UserProjectRepository extends JpaRepository<UserProject, Long> {


}
