package com.web.dao;

//�ײ㣨���ݷ��ʲ㣩����Ա��¼ϵͳ�ӿ��ļ�
import com.web.model.User;

public interface LoginDao {
	/*
	 * �жϲ���Ա�Ƿ���ڲ������û��������뷵��ֵ��������PO����
	 */
    public User isUser(String logonName,String password);
}
