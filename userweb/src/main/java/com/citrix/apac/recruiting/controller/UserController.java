package com.citrix.apac.recruiting.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.citrix.apac.recruiting.entity.Job;
import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.entity.Worker;
import com.citrix.apac.recruiting.login.JobUser;
import com.citrix.apac.recruiting.reporsitory.UserRepository;
import com.citrix.apac.recruiting.reporsitory.WorkerRepository;
import com.citrix.apac.recruiting.service.JobService;
import com.citrix.apac.recruiting.service.UserService;
import com.citrix.apac.recruiting.service.WorkerService;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private WorkerService wokerService;

	@Autowired
	private JobService jobService;
	
	@RequestMapping(value="/apply")
	public String index(ModelMap model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); 
		
		model.addAttribute("username", name);

		return "user/apply";
	}
	

	@RequestMapping(value="/resume",method=RequestMethod.GET)
	public String resume(ModelMap model ){
		JobUser u = (JobUser)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		User user = userService.getUserAllInfo(u.getUser().getId());
		model.addAttribute("user", user);
		return "user/resume";
	}

	@RequestMapping(value="/resume",method=RequestMethod.POST)
	public String saveResume(){
		return "user/resume";
	}
	
    @RequestMapping(value="/test")  
    @ResponseBody  
    public Map<String,Object> validataUser(){
        Map<String,Object> map = new HashMap<String,Object>();  
        map.put("code", true);  
        return map;  
    }  
    

	@RequestMapping(value="/logout")
	public String logout(){
		return "redirect:/login";
	}
}
