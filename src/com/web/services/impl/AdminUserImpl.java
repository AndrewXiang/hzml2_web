package com.web.services.impl;

import com.web.dao.AdminDao;
import com.web.model.User;
import com.web.services.AdminUser;

public class AdminUserImpl implements AdminUser{
	private AdminDao adminuser;
	

	//get/set������Springע��ʱʹ��
	public AdminDao getAdminuser() {
		return adminuser;
	}

	public void setAdminuser(AdminDao adminuser) {
		this.adminuser = adminuser;
	}
    //�����û�
	public String addUser(User user){
		String message = "";
		if(!adminuser.isUserExist(user)){
			if(adminuser.addUser(user)){
				message = "�����û��ɹ���";
			}else{
				message = "�����û�ʧ�ܣ������������ӣ�";
			}
		 }else {
			 message ="�������ӵ��û��Ѵ��ڣ�";
		}
		return message;
	}
	//�޸��û���Ϣ
	public String editUser(User user){
		String message ="";
		if(!adminuser.editUser(user)){
			message = "�޸�����ɹ���";
		}else{
			message = "�����޸����������ԣ�";
		}
		return message;
	}

}
