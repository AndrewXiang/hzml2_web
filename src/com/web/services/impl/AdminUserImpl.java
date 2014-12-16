package com.web.services.impl;

import com.web.dao.AdminDao;
import com.web.model.User;
import com.web.services.AdminUser;

public class AdminUserImpl implements AdminUser{
	private AdminDao adminuser;
	

	//get/set方法在Spring注入时使用
	public AdminDao getAdminuser() {
		return adminuser;
	}

	public void setAdminuser(AdminDao adminuser) {
		this.adminuser = adminuser;
	}
    //新增用户
	public String addUser(User user){
		String message = "";
		if(!adminuser.isUserExist(user)){
			if(adminuser.addUser(user)){
				message = "新增用户成功！";
			}else{
				message = "新增用户失败，请检查后重新添加！";
			}
		 }else {
			 message ="您所增加的用户已存在！";
		}
		return message;
	}
	//修改用户信息
	public String editUser(User user){
		String message ="";
		if(!adminuser.editUser(user)){
			message = "修改密码成功！";
		}else{
			message = "密码修改有误，请重试！";
		}
		return message;
	}

}
