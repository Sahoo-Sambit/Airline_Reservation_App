package com.tm.airlineReservationSystem.service;

import java.util.List;

import com.tm.airlineReservationSystem.model.User;

public interface userService 
{
	public void addUser(User user);
	public User viewUser(String username, String password);
	public User viewUser(int userId);
	public List<User> viewAllusers();
	public void deleteUser(int userId);
	public void updateUser(User user);
	
}