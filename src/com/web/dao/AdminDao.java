package com.web.dao;

import com.web.model.User;

public interface AdminDao {
	
	public boolean addUser(User user);
	
	public boolean isUserExist(User user);
	
	public boolean editUser(User user);

}
