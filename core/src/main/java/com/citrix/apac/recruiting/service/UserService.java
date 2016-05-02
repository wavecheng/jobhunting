package com.citrix.apac.recruiting.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.reporsitory.UserApplyRepository;
import com.citrix.apac.recruiting.reporsitory.UserEducationRepository;
import com.citrix.apac.recruiting.reporsitory.UserRepository;

@Service
@Transactional
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired 
	private UserEducationRepository userEducationRepository;
	
	@Autowired
	private UserApplyRepository userApplyRepository;
	
	public void saveUser(User user) {
		userRepository.save(user);
	}

	public User disableUser(Long id) {
		User u = userRepository.findOne(id);
		ensureUserExists(u);	
		u.setEnabled(false);
		userRepository.save(u);
		return u;
	}

	public boolean verifyUserCode(String code){
		User u = userRepository.findByPassword(code);
		ensureUserExists(u);
		if(!u.isVerified()){
			u.setVerified(true);
			u.setEnabled(true);
			userRepository.save(u);
			return true;
		}
		return false;
	}
	
	private void ensureUserExists(User u){
		if(u == null)
			throw new NullPointerException("User does't exist");		
	}
	
	
	public User getUserAllInfo(Long id){
		User u = userRepository.findOne(id);		
		u.setUserEducation(userEducationRepository.findByUserId(u.getId()));
		return u;
	}
}
