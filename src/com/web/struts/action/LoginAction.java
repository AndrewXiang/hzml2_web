package com.web.struts.action;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.web.model.User;
import com.web.services.Login;

/** 
 * 功能:用户登录
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
		//加载Spring配置文件，初始化IOC容器
		ClassPathXmlApplicationContext context=new ClassPathXmlApplicationContext("/applicationContext.xml");
		//从容器接管bean
		Login login=(Login)context.getBean("loginservice");
		//调用业务层的方法判断是否是合法用户
		//Operator operator=login.isOperator(name, password);
		User user =login.isUser(name, password);
		
		//if(operator!=null){
		//	this.session().setAttribute("operator", operator);
		if(user!=null){
			this.session().setAttribute("user", user);
			//session用于页面间传递，参数类型为String、Object，在后面的页面是可以取出来的，可用用户是否登录；
			//如何取出可见main.jsp的开头部分
			System.out.println("登录成功！");
			return SUCCESS;
		}else{
			System.out.println("登录失败，请重试！");
			return ERROR;
		}
	}

}
