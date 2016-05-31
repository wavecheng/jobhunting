package com.citrix.apac.recruiting.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.UsesSunHttpServer;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.login.JobUser;
import com.citrix.apac.recruiting.service.UserService;

public class BaseController {

	@Autowired
	protected UserService userService;
	
	protected Log log = LogFactory.getLog("controller");
	
	protected User getCurrentUser(){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth instanceof AnonymousAuthenticationToken)){
			 return ((JobUser)auth.getPrincipal()).getUser();
		}
		return null;
	}
	
	@RequestMapping(value="/statusError")
	@ResponseBody
	public ResponseEntity<String> statusError(){
		return ResponseEntity.status(HttpStatus.CONFLICT).body("Invalid data!");
	}
}
