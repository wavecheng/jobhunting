package com.citrix.apac.recruiting.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.reporsitory.UserRepository;

@Component("jobUserService")
public class JobUserService implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;
	
    @Autowired  
    private MessageSource messageSource; 
    
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		User u = userRepository.findByEmail(email);
		if(u == null) 
			throw new UsernameNotFoundException("User not found");
		JobUser ju = new JobUser(u);
		return ju;
	}

}
