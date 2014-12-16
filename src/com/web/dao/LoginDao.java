package com.web.dao;

//底层（数据访问层）操作员登录系统接口文件
import com.web.model.User;

public interface LoginDao {
	/*
	 * 判断操作员是否存在参数：用户名，密码返回值：操作号PO对象
	 */
    public User isUser(String logonName,String password);
}
