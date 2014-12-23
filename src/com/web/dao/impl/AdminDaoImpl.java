package com.web.dao.impl;

//实现底层（数据访问层）层操作员（管理员）管理系统接口
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
	//hibernate SessionFactory对象，由Spring注入
	private SessionFactory factory;
	
	//get/set 方法在Spring注入时使用
	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
    //增加用户
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
		//System.out.println(user.getUserId()); UserId获取不到
		//System.out.println(user.getLogonName()); 这句话能打印出来说明没有问题
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
	
	//修改用户信息
	public boolean editUser(User user){
		boolean isok =true;
		Session session = factory.openSession();
		Transaction ts = session.beginTransaction();
		System.out.println("修改的userId为:"+user.getUserId());		
		@SuppressWarnings("deprecation")
		Connection conn = session.connection();
		
		
		try {
			Statement stat = conn.createStatement();
			//现在实现能修改用户名(仅支持英文)和密码
		    int i= stat.executeUpdate("update User  set password = '"+user.getPassword()+"',"
		    		                               + "logon_name ='"+user.getLogonName()+"',"
		    		                               + "first_name ='"+user.getFirstName()+"',"
		    		                               + "last_name  ='"+user.getLastName()+"'"
		    		                            + "where user_id ="+user.getUserId()+"");
		   //SQL语句中的字段完全采用正常的SQL语句，或者说字段按照xx.hbm.xml中的<column>一列
		  /*int i= stat.executeUpdate("update User  set password = "+user.getPassword()+" where logon_Name='"+user.getLogonName()+"'");*/
			System.out.print("更新的行数为:"+i);//测试Update是否执行过
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
