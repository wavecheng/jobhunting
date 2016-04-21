package com.citrix.apac.recruiting.controller;

import java.util.List;
import java.util.stream.Stream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.citrix.apac.recruiting.entity.Job;
import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.entity.Worker;
import com.citrix.apac.recruiting.reporsitory.UserRepository;
import com.citrix.apac.recruiting.reporsitory.WorkerRepository;
import com.citrix.apac.recruiting.service.JobService;
import com.citrix.apac.recruiting.service.WorkerService;

@Controller
public class HomeController {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private WorkerService wokerService;

	@Autowired
	private JobService jobService;
	
	@RequestMapping(value="/")
	public String index(ModelMap model){
	      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      String name = auth.getName(); //get logged in username			
	      model.addAttribute("username", name);
	      
//	      List<User> users = userRepository.findAll();
//	      System.out.println(users.size());
//	      
//	      Worker wk = wokerService.findByEmail("bo.chen@citrix.com");
//	      List<Job> jobs = wk.getJobs();
//	      System.out.println(wk.getName());	  
	      
	      List<Job> jobs = jobService.getAllOpenJobs();
	      for(Job j : jobs){
	    	  System.out.println(j.getDescription());
	      }
	      
		return "index";
	}
	
	@RequestMapping(value="/login")
	public void login(){

	}
	
	@RequestMapping(value="/admin")
	public String admin(){
		return "admin";
	}
}
