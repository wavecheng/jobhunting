package com.citrix.apac.recruiting.reporsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.UserWork;

@Repository("userWorkRepository")
public interface UserWorkRepository extends JpaRepository<UserWork, Long> {


}
