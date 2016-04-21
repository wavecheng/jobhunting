package com.citrix.apac.recruiting.controller;

import java.util.List;
import java.util.stream.Stream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.citrix.apac.recruiting.entity.Job;
import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.entity.Worker;
import com.citrix.apac.recruiting.reporsitory.UserRepository;
import com.citrix.apac.recruiting.reporsitory.WorkerRepository;
import com.citrix.apac.recruiting.service.JobService;
import com.citrix.apac.recruiting.service.WorkerService;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private WorkerService wokerService;

	@Autowired
	private JobService jobService;
	
	@RequestMapping(value="/mine")
	public String index(ModelMap model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); // get logged in username
		model.addAttribute("username", name);

		List<Job> jobs = jobService.getAllOpenJobs();
		System.out.println(jobs.size());
		model.addAttribute("jobs", jobs);

		return "index";
	}
	
	@RequestMapping(value="/login" , method=RequestMethod.GET)
	public String login(){
		return "login";
	}
	
	@RequestMapping(value="/admin")
	public String admin(){
		return "admin";
	}
	
	@RequestMapping(value="/aboutus")
	public String aboutUs(){
		return "aboutus";
	}
	
	@RequestMapping(value="/work")
	public String work(){
		return "work";
	}
	
	@RequestMapping(value="/voice")
	public String voice(){
		return "voice";
	}
	
	@RequestMapping(value="/video")
	public String video(){
		return "video";
	}
	
}
