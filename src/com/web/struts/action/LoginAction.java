package com.web.struts.action;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.web.model.User;
import com.web.services.Login;

/** 
 * ����:�û���¼
 * 
 */

public class LoginAction extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/** password property */
	private String password;

	/** name property */
	private String name;
	/** 
	 * Returns the password.
	 * @return String
	 */
	public String getPassword() {
		return password;
	}

	/** 
	 * Set the password.
	 * @param password The password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/** 
	 * Returns the name.
	 * @return String
	 */
	public String getName() {
		return name;
	}

	/** 
	 * Set the name.
	 * @param name The name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	
	public String execute(){
		//����Spring�����ļ�����ʼ��IOC����
		ClassPathXmlApplicationContext context=new ClassPathXmlApplicationContext("/applicationContext.xml");
		//�������ӹ�bean
		Login login=(Login)context.getBean("loginservice");
		//����ҵ���ķ����ж��Ƿ��ǺϷ��û�
		//Operator operator=login.isOperator(name, password);
		User user =login.isUser(name, password);
		
		//if(operator!=null){
		//	this.session().setAttribute("operator", operator);
		if(user!=null){
			this.session().setAttribute("user", user);
			//session����ҳ��䴫�ݣ���������ΪString��Object���ں����ҳ���ǿ���ȡ�����ģ������û��Ƿ��¼��
			//���ȡ���ɼ�main.jsp�Ŀ�ͷ����
			System.out.println("��¼�ɹ���");
			return SUCCESS;
		}else{
			System.out.println("��¼ʧ�ܣ������ԣ�");
			return ERROR;
		}
	}

}
