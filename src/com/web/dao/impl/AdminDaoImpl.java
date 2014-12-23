package com.web.dao.impl;

//ʵ�ֵײ㣨���ݷ��ʲ㣩�����Ա������Ա������ϵͳ�ӿ�
import java.sql.*;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.web.dao.AdminDao;
import com.web.model.User;

public class AdminDaoImpl implements AdminDao {
	//hibernate SessionFactory������Springע��
	private SessionFactory factory;
	
	//get/set ������Springע��ʱʹ��
	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
    //�����û�
	public boolean addUser(User user){
		Session session =factory.openSession();
		Transaction ts = session.beginTransaction();
		session.save(user);
		ts.commit();
		boolean isok = ts.wasCommitted();
		session.close();
		return isok;
	}
    
	public boolean isUserExist(User user){
		boolean isExist =false;
		Session session = factory.openSession();
		Transaction ts  = session.beginTransaction();
		//System.out.println(user.getUserId()); UserId��ȡ����
		//System.out.println(user.getLogonName()); ��仰�ܴ�ӡ����˵��û������
		Query query = session.createQuery("from User u where u.logonName ='" + user.getLogonName() +"'");
		@SuppressWarnings("unchecked")//in order to avoid the waring
		List<User> list =query.list();
		Iterator<User> it = list.iterator();
		if(it.hasNext()){
			isExist = true;
		}
		ts.commit();
		session.close();
		return isExist;
	}
	
	//�޸��û���Ϣ
	public boolean editUser(User user){
		boolean isok =true;
		Session session = factory.openSession();
		Transaction ts = session.beginTransaction();
		System.out.println("�޸ĵ�userIdΪ:"+user.getUserId());		
		@SuppressWarnings("deprecation")
		Connection conn = session.connection();
		
		
		try {
			Statement stat = conn.createStatement();
			//����ʵ�����޸��û���(��֧��Ӣ��)������
		    int i= stat.executeUpdate("update User  set password = '"+user.getPassword()+"',"
		    		                               + "logon_name ='"+user.getLogonName()+"',"
		    		                               + "first_name ='"+user.getFirstName()+"',"
		    		                               + "last_name  ='"+user.getLastName()+"'"
		    		                            + "where user_id ="+user.getUserId()+"");
		   //SQL����е��ֶ���ȫ����������SQL��䣬����˵�ֶΰ���xx.hbm.xml�е�<column>һ��
		  /*int i= stat.executeUpdate("update User  set password = "+user.getPassword()+" where logon_Name='"+user.getLogonName()+"'");*/
			System.out.print("���µ�����Ϊ:"+i);//����Update�Ƿ�ִ�й�
		    if(i != 0){
				isok = false;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		ts.commit();
		session.close();
		return isok;
	}
	
}
