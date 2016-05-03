package com.citrix.apac.recruiting.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

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
	
}
