package com.web.dao.impl;

//ʵ�ֵײ㣨���ݷ��ʲ㣩�����Ա��¼ϵͳ�ӿ�
import java.util.Iterator;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.web.dao.LoginDao;
import com.web.model.User;


public class LoginDaoImpl implements LoginDao{
	// hibernate��SessionFactory������springע�룮
		private SessionFactory factory;

		// get/set������springע��ʱʹ��
		public SessionFactory getFactory() {
			return factory;
		}

		public void setFactory(SessionFactory factory) {
			this.factory = factory;
		}

		// �ж��ǲ���Ա�Ƿ����
		public User isUser(String logonName,String password){
			User user = null;
			Session session = factory.openSession();
			Transaction ts = null;
			ts = session.beginTransaction();
			try {
				/*Query query = session
						.createQuery("from Operator as a where a.operatorName='"
								+ operatorName + "' and a.operatorPwd='"
								+ operatorPwd + "'");*/
				Query query =session.createQuery("from User as a where a.logonName='" + logonName + "' and a.password = '" +password + "'");
				@SuppressWarnings("unchecked")//in order to avoid the waring
				List<User> list = query.list();
				Iterator<User> it = list.iterator();//in order to avoid the waring add the <User>
				if (!Hibernate.isInitialized(list))
					Hibernate.initialize(list);
				if (it.hasNext()) {
					user = (User) it.next();
				}
			} catch (Exception e) {
				// TODO: handle exception
			}

			ts.commit();
			session.close();
			return user;
		}
	
}
