package com.web.services.impl;

//ʵ��ҵ������Ա��¼ϵͳ�ӿ�
import com.web.dao.LoginDao;

import com.web.model.User;
import com.web.services.Login;

public class LoginImpl implements Login {
	// ���ݷ��ʲ����Ա��¼����,��springע��(�й�)
	private LoginDao login;

	// �ж��û��Ƿ����,����û�����,�򷵻��û�

	public User isUser(String logonName, String password) {
		return login.isUser(logonName, password);
	}
	
	// get/set������springע��ʱʹ��
	public LoginDao getLogin() {
		return login;
	}

	public void setLogin(LoginDao login) {
		this.login = login;
	}
}
