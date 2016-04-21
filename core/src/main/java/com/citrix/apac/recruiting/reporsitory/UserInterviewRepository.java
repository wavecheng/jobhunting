package com.citrix.apac.recruiting.reporsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.UserInterview;

@Repository("userInterviewRepository")
public interface UserInterviewRepository extends JpaRepository<UserInterview, Long> {


}
