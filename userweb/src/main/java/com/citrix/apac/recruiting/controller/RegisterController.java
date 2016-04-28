package com.citrix.apac.recruiting.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.service.ConstString;
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
	public String registerUser(@RequestParam Map<String,String> p , HttpServletRequest request){
		User user = new User();		
		user.setName(p.get("name"));
		user.setPassword(encoder.encode(p.get("password")));
		user.setEmail(p.get("email"));
		userService.saveUser(user);
		
		String appRoot = request.getRequestURL().toString();
		String code = Base64Utils.encodeToUrlSafeString(user.getPassword().getBytes());
		Map<String, Object> contentParam = new HashMap<>();
		contentParam.put("@url", appRoot + "verify/" + code);
		mailService.composeMailFromTemplate(user.getEmail(), ConstString.register_verify, null,contentParam);		
		return String.format("redirect:/message?success=true&type=%1s", ConstString.register);
	}
	
	@RequestMapping(value="/verify/{code}")
	public String validateEmail(@PathVariable String code){	
		String password = new String(Base64Utils.decodeFromUrlSafeString(code));
		boolean verify = false;
		try{
			verify = userService.verifyUserCode(password);
		}catch(Exception ex){
			
		}
		return String.format("redirect:/message?success=%1s&type=%2s",verify,ConstString.verify);
	}
	
}
