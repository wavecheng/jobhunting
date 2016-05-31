package com.citrix.apac.recruiting.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.client.HttpClientErrorException;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.entity.UserEducation;
import com.citrix.apac.recruiting.entity.UserProject;
import com.citrix.apac.recruiting.entity.UserWork;
import com.citrix.apac.recruiting.helper.XssSanitizeObjectMapper;
import com.citrix.apac.recruiting.service.JobService;
import com.citrix.apac.recruiting.service.WorkerService;
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

	@RequestMapping(value="/change_password",method=RequestMethod.GET)
	public String changePassword(ModelMap model ){
		return "user/change_password";
	}

	@RequestMapping(value="/change_password",method=RequestMethod.POST)
	public String updatePassword(@RequestParam HashMap<String, String> param){	
		User user = userService.findByEmail(getCurrentUser().getEmail());
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String pwd = encoder.encode(param.get("password"));
		user.setPassword(pwd);
		userService.saveUser(user);
		return "redirect:/message?type=change_password&success=true";
	}
	
	@RequestMapping(value="/resume",method=RequestMethod.POST)
	public String saveResume(@RequestBody User user){
		return "user/resume";
	}

	@RequestMapping(value="/save_basic",method=RequestMethod.POST)
	@ResponseBody 
	public String saveBasic(@RequestBody User u){
		User cu = userService.getUserAllInfo(getCurrentUser().getId());
		cu.setBirthCity(u.getBirthCity());
		cu.setBirthDate(u.getBirthDate());
		cu.setBirthProvince(u.getBirthProvince());
		cu.setCitytoExam(u.getCitytoExam());
		cu.setCurrentCity(u.getCurrentCity());
		cu.setCurrentProvince(u.getCurrentProvince());
		cu.setDegree(u.getDegree());
		cu.setEmail(u.getEmail());
		cu.setEngHighestScore(u.getEngHighestScore());
		cu.setEngLevel(u.getEngLevel());
		cu.setGender(u.getGender());
		cu.setGmat(u.getGmat());
		cu.setGre(u.getGre());
		cu.setIdNo(u.getIdNo());
		cu.setMajor(u.getMajor());
		cu.setMarried(u.isMarried());
		cu.setMobile(u.getMobile());
		cu.setOral(u.getOral());
		cu.setName(u.getName());
		cu.setNameEng(u.getNameEng());
		cu.setSecLanguage(u.getSecLanguage());
		cu.setSecondLangLevel(u.getSecondLangLevel());
		cu.setToefl(u.getToefl());
		cu.setToeic(u.getToeic());
		cu.setUniversityName(u.getUniversityName());
		userService.saveUser(cu);

		return "success";
	}

	@RequestMapping(value="/save_education",method=RequestMethod.POST)
	@ResponseBody 
	public List<UserEducation> saveEducation(@RequestBody UserEducation edu,HttpServletResponse response){
		User cu = getCurrentUser();	
		try{
			userService.saveUserEducation(cu, edu);
		}catch(Exception ex){
			log.error(ex);
			throw new HttpClientErrorException(HttpStatus.CONFLICT);
		}
		return userService.getUserEducations(cu.getId());
	}

	
	@RequestMapping(value="/delete_education",method=RequestMethod.POST)
	@ResponseBody
	public List<UserEducation> deleteEducation(@RequestBody UserEducation edu){
		User cu = getCurrentUser();		
		userService.deleteUserEducation(edu.getId());
		return userService.getUserEducations(cu.getId());
	}

	@RequestMapping(value="/save_project",method=RequestMethod.POST)
	@ResponseBody 
	public List<UserProject> saveProject(@RequestBody UserProject item){
		User cu = getCurrentUser();		
		userService.saveUserProject(cu,item);
		return userService.getUserProject(cu.getId());
	}

	@RequestMapping(value="/delete_project",method=RequestMethod.POST)
	@ResponseBody
	public List<UserProject> deleteProject(@RequestBody UserProject item){
		User cu = getCurrentUser();		
		userService.deleteUserProject(item.getId());
		return userService.getUserProject(cu.getId());
	}

	@RequestMapping(value="/save_work",method=RequestMethod.POST)
	@ResponseBody 
	public List<UserWork> saveWork(@RequestBody UserWork item){
		User cu = getCurrentUser();		
		userService.saveUserWork(cu,item);
		return userService.getUserWork(cu.getId());
	}

	@RequestMapping(value="/delete_work",method=RequestMethod.POST)
	@ResponseBody
	public List<UserWork> deleteWork(@RequestBody UserWork item){
		User cu = getCurrentUser();		
		userService.deleteUserWork(item.getId());
		return userService.getUserWork(cu.getId());
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
				ObjectMapper mapper = new XssSanitizeObjectMapper();// ObjectMapper();
				String userJson = mapper.writeValueAsString(user);
				model.addAttribute("user_json", userJson);
				model.addAttribute("examCityList", mapper.writeValueAsString(jobService.getExamCities()));
			}catch(Exception ex){
				System.out.println(ex);
			}
    	}
        return "user/update_resume";  
    }  
    
	@RequestMapping(value="/logout")
	public String logout(SessionStatus  status){
		status.setComplete();
		return "redirect:/login";
	}
}
