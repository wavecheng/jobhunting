package com.citrix.apac.recruiting.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citrix.apac.recruiting.entity.Enums.ApplyStatus;
import com.citrix.apac.recruiting.entity.Job;
import com.citrix.apac.recruiting.entity.User;
import com.citrix.apac.recruiting.entity.UserApply;
import com.citrix.apac.recruiting.entity.UserEducation;
import com.citrix.apac.recruiting.entity.UserInterview;
import com.citrix.apac.recruiting.reporsitory.JobRepository;
import com.citrix.apac.recruiting.reporsitory.UserApplyRepository;
import com.citrix.apac.recruiting.reporsitory.UserEducationRepository;
import com.citrix.apac.recruiting.reporsitory.UserExamRepository;
import com.citrix.apac.recruiting.reporsitory.UserInterviewRepository;
import com.citrix.apac.recruiting.reporsitory.UserProjectRepository;
import com.citrix.apac.recruiting.reporsitory.UserRepository;
import com.citrix.apac.recruiting.reporsitory.UserSkillRepository;
import com.citrix.apac.recruiting.reporsitory.UserWorkRepository;

@Service
@Transactional
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired 
	private UserEducationRepository userEducationRepository;

	@Autowired 
	private UserProjectRepository userProjectRepository;

	@Autowired 
	private UserSkillRepository userSkillRepository;

	@Autowired 
	private UserInterviewRepository userInterviewRepository;

	@Autowired 
	private UserExamRepository userExamRepository;

	@Autowired 
	private UserWorkRepository userWorkRepository;
	
	@Autowired
	private UserApplyRepository userApplyRepository;
	
	@Autowired
	private JobRepository jobRepository;
	
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
		u.setUserApply(userApplyRepository.findByUserId(u.getId()));
		u.setUserExam(userExamRepository.findByUserId(u.getId()));
		u.setUserProject(userProjectRepository.findByUserId(u.getId()));
		u.setUserSkill(userSkillRepository.findByUserId(u.getId()));
		u.setUserWork(userWorkRepository.findByUserId(u.getId()));		
		return u;
	}
	
	public List<UserApply> applyJob(Long userId, Long jobId){
		User u = userRepository.findOne(userId);	
		Job job = jobRepository.findOne(jobId);
		List<UserApply> applys = userApplyRepository.findByUserId(userId);
		boolean applied = applys.stream().anyMatch(t -> t.getJob().getId() == job.getId());	
		if(applied)
			throw new RuntimeException("You have already applied this job");
		
		if(u.isEnabled() && u.isVerified()){
			UserApply item = new UserApply();
			item.setJob(job);
			item.setStatus(ApplyStatus.Applying);
			item.setUser(u);
			item = userApplyRepository.save(item);
		}else{
			throw new RuntimeException("Your account is not valid!");
		}
		return getUserApplies(userId);
	}

	public boolean cancelJob(Long userId, Long userApplyId){
		UserApply apply = userApplyRepository.findOne(userApplyId);
		if(apply.getUser().getId() == userId){
			userApplyRepository.delete(apply);
			return true;
		}
		return false;
	}

	public List<UserEducation> getUserEducations(Long userId){
		return userEducationRepository.findByUserId(userId);
	}
	
	public void saveUserEducation(User user, UserEducation item){
		item.setUser(user);
		userEducationRepository.saveAndFlush(item);
	}
	
	public void updateUserEducation(UserEducation item){
		userEducationRepository.saveAndFlush(item);
	}
	
	public void deleteUserEducation(Long item){
		userEducationRepository.delete(item);
	}
	
	public List<UserApply> getUserApplies(Long userId){
		return userApplyRepository.findByUserId(userId);
	}
	
	public User findByEmail(String email){
		User u = userRepository.findByEmail(email);
		return u;
	}
}
