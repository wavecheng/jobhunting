package com.citrix.apac.recruiting.controller;

import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.service.ConstString;
import com.citrix.apac.recruiting.service.DatabaseMailService;
import com.citrix.apac.recruiting.service.SmtpMailService;
import com.citrix.apac.recruiting.service.UserService;

@Controller
@RequestMapping(value="/register")
public class RegisterController {

	public final String MAIL_REGISTER_TITLE = "Citrix Job account activation!";
	public final String MAIL_REGISTER_BODY = "Please click following link <br/> <a href='%1$s'>%1$s</a> <br/> to activate your account! ";
	
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private SmtpMailService smtpMailService;
	
	private BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

	@RequestMapping(method=RequestMethod.GET)
	public String register(){
		return "register";
	}

	@RequestMapping(value="/check_email", method=RequestMethod.GET)
	@ResponseBody
	public String checkEmail(@RequestParam String email){
		User u =  userService.findByEmail(email);
		if(u == null)
			return "0";
		return "1";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String registerUser(@RequestParam Map<String,String> p , HttpServletRequest request) throws MessagingException{
		User u =  userService.findByEmail(p.get("email"));
		if(u != null){
			throw new RuntimeException("Email [<b>" + p.get("email") + "</b>] has been used, please try another one!");
		}
		
		User user = new User();		
		user.setName(p.get("name"));
		user.setPassword(encoder.encode(p.get("password")));
		user.setEmail(p.get("email"));
		userService.saveUser(user);
		
		String appRoot = request.getRequestURL().toString();
		String code = Base64Utils.encodeToUrlSafeString(user.getPassword().getBytes());
		Map<String, Object> contentParam = new HashMap<>();
		String verifyUrl = appRoot + "/verify/" + code;
		verifyUrl = verifyUrl.replaceAll("//", "/");
		contentParam.put("@url", verifyUrl);	
		
		String msgBody = String.format(MAIL_REGISTER_BODY, verifyUrl);
		smtpMailService.sendMail(user.getEmail(), MAIL_REGISTER_TITLE,msgBody);		
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
