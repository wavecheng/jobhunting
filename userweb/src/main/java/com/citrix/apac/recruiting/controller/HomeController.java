package com.citrix.apac.recruiting.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.citrix.apac.recruiting.entity.Job;
import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.login.JobUser;
import com.citrix.apac.recruiting.service.JobService;
import com.citrix.apac.recruiting.service.UserService;

@Controller
@SessionAttributes("userId")
public class HomeController extends BaseController {

	@Autowired
	private JobService jobService;
	
	@RequestMapping(value="/")
	public String index(ModelMap model) {
		User u = getCurrentUser();
		if(u != null){
			model.addAttribute("username", u.getName());
		}
		List<Job> jobs = jobService.getAllOpenJobs();
		model.addAttribute("jobs", jobs);

		return "index";
	}
	
	@RequestMapping(value="/login" , method=RequestMethod.GET)
	public String login(@RequestParam(required=false,defaultValue="false") boolean error,Model m){
		m.addAttribute("error", error);
		return "login";
	}


	@RequestMapping(value="/aboutus")
	public String aboutUs(){
		return "aboutus";
	}

	@RequestMapping(value="/error")
	public String error(){
		return "error";
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

	@RequestMapping(value="/reset_password",method=RequestMethod.GET)
	public String resetPassword(){
		return "reset_password";
	}

	@RequestMapping(value="/reset_password",method=RequestMethod.POST)
	public String updatePassword(@RequestParam(name="email",required=true) String email){
		//TODO
		return "redirect:/index";
	}
	
}
