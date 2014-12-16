package com.web.struts.action;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.web.model.User;
import com.web.services.AdminUser;

public class AddUserAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int userId;
	private String logonName;
	private String firstName;
	private String lastName;
	private String password;
	private Integer isAdmin;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public String getLogonName() {
		return logonName;
	}
	public void setLogonName(String logonName) {
		this.logonName = logonName;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(Integer isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	public String execute(){
		User user=new User();
		user.setIsAdmin(Integer.valueOf(isAdmin));
		user.setUserId(Integer.valueOf(userId));
		user.setLogonName(logonName);
		user.setPassword(password);
		user.setFirstName(firstName);
		user.setLastName(lastName);		
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("/applicationContext.xml");
		AdminUser admin = (AdminUser)context.getBean("adminservice");
		
		String message = admin.addUser(user);
		System.out.println(message);
		if(!message.equals("")){
			this.request().setAttribute("message", message);
			return SUCCESS;
		}else {
			return INPUT;
		}
	}
	
	
}
