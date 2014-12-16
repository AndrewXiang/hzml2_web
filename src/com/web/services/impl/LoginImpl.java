package com.web.services.impl;

//实现业务层操作员登录系统接口
import com.web.dao.LoginDao;

import com.web.model.User;
import com.web.services.Login;

public class LoginImpl implements Login {
	// 数据访问层操作员登录对象,由spring注入(托管)
	private LoginDao login;

	// 判断用户是否存在,如果用户存在,则返回用户

	public User isUser(String logonName, String password) {
		return login.isUser(logonName, password);
	}
	
	// get/set方法在spring注入时使用
	public LoginDao getLogin() {
		return login;
	}

	public void setLogin(LoginDao login) {
		this.login = login;
	}
}
