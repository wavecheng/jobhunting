package com.citrix.apac.recruiting.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileSystemUtils;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.citrix.apac.recruiting.entity.Job;
import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.service.JobService;
import com.citrix.apac.recruiting.service.MailService;
import com.citrix.apac.recruiting.service.UserService;

@Controller
@RequestMapping(value="/register")
public class RegisterController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private MailService mailService;
	
	private BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

	@RequestMapping(method=RequestMethod.GET)
	public String register(){
		return "register";
	}

	@RequestMapping(method=RequestMethod.POST)
	public String registerUser(@RequestParam Map<String,String> p){
		User user = new User();		
		user.setName(p.get("name"));
		user.setPassword(encoder.encode(p.get("password")));
		user.setEmail(p.get("email"));
		userService.saveUser(user);
		
		String validHash = generateValidateHash(user.getEmail(), user.getEmail());
		Map<String, Object> contentParam = new HashMap<>();
		contentParam.put("@email", user.getEmail());
		contentParam.put("@code", validHash);
		mailService.composeMailFromTemplate(user.getEmail(), "register_verify", null,contentParam);
		
		return "redirect:/message?sucess=true&type=register";
	}
	
	@RequestMapping(value="/verify/{email}/{hash}")
	public String validateEmail(@PathVariable String hash){	
		String ids[] = StringUtils.split(hash, "$");
		System.out.println(ids[1] + ", " + hash + ",==>" + generateValidateHash("gmail",ids[1]));
		return "redirect:/message?sucess=true&type=validate";
	}
	
	
	private String generateValidateHash(String email, String salt){
		Md5PasswordEncoder encoder = new Md5PasswordEncoder();
		String hash = encoder.encodePassword(email, salt);
		System.out.println(hash);
		return hash;
	}
}
