package com.citrix.apac.recruiting.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.entity.UserApply;
import com.citrix.apac.recruiting.service.JobService;
import com.citrix.apac.recruiting.service.WorkerService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value="/user")
public class UserController extends BaseController{

	@Autowired
	private WorkerService wokerService;

	@Autowired
	private JobService jobService;

	@RequestMapping(value="/apply")
	public String index(@RequestParam(name="success",required=false) String success, ModelMap model) {
		User u = getCurrentUser();
		if(u != null){
			model.addAttribute("username", u.getName());
			model.addAttribute("applies", userService.getUserApplies(u.getId()));
		}
		model.addAttribute("success", success);
		return "user/apply";
	}
	
	@RequestMapping(value="/apply/{id}")
	public String applyJob(@PathVariable Long id,ModelMap model) {
		User u = getCurrentUser();
		userService.applyJob(u.getId(), id);
		return "redirect:/user/apply?success=true";
	}

	@RequestMapping(value="/cancel/{id}")
	public String cancelJob(@PathVariable Long id,ModelMap model) {
		User u = getCurrentUser();
		boolean success = userService.cancelJob(u.getId(), id);
		return "redirect:/user/apply?success="+success;
	}
	
	@RequestMapping(value="/resume",method=RequestMethod.GET)
	public String resume(ModelMap model ){	
		User user = userService.getUserAllInfo(getCurrentUser().getId());
		model.addAttribute("user", user);
		return "user/resume";
	}

	@RequestMapping(value="/resume",method=RequestMethod.POST)
	public String saveResume(@RequestBody User user){
		return "user/resume";
	}
	
	@RequestMapping(value="/load_resume",method=RequestMethod.GET)
	@ResponseBody
	public User getResume(){
		User user = userService.getUserAllInfo(getCurrentUser().getId());
		return user;
	}

    @RequestMapping(value="/update_resume",method=RequestMethod.GET)
    public String updateResueme(ModelMap model){
    	User user = userService.getUserAllInfo(getCurrentUser().getId()); 
    	if(user != null){
	    	model.addAttribute("user", user);		
			try{
				ObjectMapper mapper = new ObjectMapper();
				String userJson = mapper.writeValueAsString(user);
				System.out.println(userJson);
				model.addAttribute("user_json", userJson);
			}catch(Exception ex){
				System.out.println(ex);
			}
    	}
        return "user/update_resume";  
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
