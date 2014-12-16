package com.web.filter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.*;

//import com.web.model.Operator;
import com.web.model.User;


/**
 * 
 * TODO �ж��û��Ƿ��ǹ���Ա
 */
public class SecondFilter implements Filter {

	public void init(FilterConfig cong) {
//		do nothing
	}

	public void doFilter(ServletRequest srequest, ServletResponse sresponse,
			FilterChain chain) {

		try {
			HttpServletRequest requst = (HttpServletRequest) srequest;
			HttpServletResponse response = (HttpServletResponse) sresponse;
			HttpSession session = requst.getSession();
			//��session��ȡ�ò���Ա
			User user = (User) session.getAttribute("user");
			int ad = user.getIsAdmin(); 
			//�������ͨ�û�,���޴˲���Ȩ��
			if (user == null || ad==0){				
					response.sendRedirect("/web/main.jsp");				
			} else {
				chain.doFilter(srequest, sresponse);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void destroy() {
		//do nothing
	}

}
