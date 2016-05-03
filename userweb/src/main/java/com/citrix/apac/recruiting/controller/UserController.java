package com.citrix.apac.recruiting.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.service.JobService;
import com.citrix.apac.recruiting.service.WorkerService;

@Controller
@RequestMapping(value="/user")
public class UserController extends BaseController{

	@Autowired
	private WorkerService wokerService;

	@Autowired
	private JobService jobService;
	
	@RequestMapping(value="/apply")
	public String index(ModelMap model) {
		User u = getCurrentUser();
		if(u != null){
			model.addAttribute("username", u.getName());
		}
		return "user/apply";
	}
	
	@RequestMapping(value="/resume",method=RequestMethod.GET)
	public String resume(ModelMap model ){	
		User user = userService.getUserAllInfo(getCurrentUser().getId());
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
	public String logout(SessionStatus  status){
		status.setComplete();
		return "redirect:/login";
	}
}
