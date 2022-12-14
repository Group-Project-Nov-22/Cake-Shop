package com.group_project.takes_the_cake.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.group_project.takes_the_cake.models.LoginUser;
import com.group_project.takes_the_cake.models.User;
import com.group_project.takes_the_cake.repositories.UserRepository;



@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepo;
	
	public User register(User newUser, BindingResult result) {
		
		Optional<User> userLookUp = userRepo.findByEmail(newUser.getEmail());
		if(userLookUp.isPresent()) {
			result.rejectValue("email", "unique", "¡Account with this email already exists¡");
		}
		
		if(!newUser.getPassword().equals(newUser.getConfirm())) {
			result.rejectValue("confirm", "match", "¡The confirm password must match the password¡");
		}
		
		if(result.hasErrors()) {
			return null;
		}
		
		String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
		newUser.setPassword(hashed);
		
		newUser = userRepo.save(newUser);
		
		return newUser;
	}
	public User Login(LoginUser newLogin, BindingResult result) {
		Optional<User> userLookUp = userRepo.findByEmail(newLogin.getEmail());
		if(!userLookUp.isPresent()) {
			result.rejectValue("email", "missing", "¡No Account Found¡");
			return null;
		}
		
		User user = userLookUp.get();
		
		if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
			result.rejectValue("password", "match", "¡Invalid Password¡");
		}
		
		if(result.hasErrors()) {
			return null;
		}
		return user;
	}
	
	public User findByEmail(String email) {
		
		Optional<User> result = userRepo.findByEmail(email);
		if(result.isPresent()) {
			return result.get();
		}
		return null;
	}
	
	public User findById(Long id) {
		
		Optional<User> result = userRepo.findById(id);
		if(result.isPresent()) {
			return result.get();
		}
		return null;
	}

}
