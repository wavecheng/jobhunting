package com.citrix.apac.recruiting.service;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import java.util.stream.Collectors;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citrix.apac.recruiting.entity.Job;
import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.reporsitory.JobRepository;
import com.citrix.apac.recruiting.reporsitory.UserApplyRepository;
import com.citrix.apac.recruiting.reporsitory.UserRepository;

@Service
@Transactional
public class JobService {

	@Autowired
	private JobRepository jobRepository;
	
	@Autowired
	private UserApplyRepository userApplyRepository;
	
	public List<Job> getAllOpenJobs() {
		
		//最后一天的日期减少一天（当天截止的job才会显示）
		Calendar c = Calendar.getInstance();
		c.add(Calendar.DATE, -1);
		Date now = c.getTime();
		
		return jobRepository.findAll().stream().filter(
			j -> { return j.getToDate().after(now);}
		).collect(Collectors.toList());	
		
	}

}
