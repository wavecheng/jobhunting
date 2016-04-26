package com.citrix.apac.recruiting.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.citrix.apac.recruiting.entity.Job;
import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.service.JobService;
import com.citrix.apac.recruiting.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private JobService jobService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/")
	public String index(ModelMap model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); 
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


	@RequestMapping(value="/aboutus")
	public String aboutUs(){
		return "aboutus";
	}

	@RequestMapping(value="/message")
	public String message(@RequestParam(required=false,name="success") boolean success, 
			@RequestParam(required=false,name="type") String type, ModelMap m){
		m.addAttribute("success", success);
		m.addAttribute("type", type);
		return "message";
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
