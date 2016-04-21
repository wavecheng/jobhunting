package com.citrix.apac.recruiting.reporsitory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.Job;
import com.citrix.apac.recruiting.entity.Worker;

@Repository("jobRepository")
public interface JobRepository extends JpaRepository<Job, Long> {

    List<Job> findByWorker(Worker worker);
    
    List<Job> findByWorkLocationLike(String s);
    
}
