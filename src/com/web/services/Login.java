package com.web.services;

//业务层操作员登录系统接口文件

import com.web.model.User;

public interface Login {
	/*
	 * 判断用户是否存在，如存在，则返回用户参数：用户名，密码   返回值：操作员PO对象
	 */
	public User isUser(String logonName,String password);

}
