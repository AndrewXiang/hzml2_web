package com.web.services;

//ҵ������Ա��¼ϵͳ�ӿ��ļ�

import com.web.model.User;

public interface Login {
	/*
	 * �ж��û��Ƿ���ڣ�����ڣ��򷵻��û��������û���������   ����ֵ������ԱPO����
	 */
	public User isUser(String logonName,String password);

}
