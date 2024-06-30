package com.tm.airlineReservationSystem.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tm.airlineReservationSystem.model.User;
import com.tm.airlineReservationSystem.repository.userRepository;
import com.tm.airlineReservationSystem.service.userService;

@Service
public class userServiceImpl implements userService
{
	@Autowired
	private userRepository userRepo;
	@Override
	public void addUser(User user)
	{
		userRepo.save(user);
	}
	@Override
	public User viewUser(String username, String password) 
	{
		return userRepo.findByUsername(username, password);
	}
	@Override
	public List<User> viewAllusers() 
	{
		return (List<User>) userRepo.findAll();
	}
	@Override
	public User viewUser(int userId) 
	{
		return userRepo.findByUserId(userId);
	}
	@Override
	public void deleteUser(int userId) 
	{
		userRepo.deleteById(userId);
	}
	@Override
	public void updateUser(User user)
	{
		userRepo.save(user);
	}

}