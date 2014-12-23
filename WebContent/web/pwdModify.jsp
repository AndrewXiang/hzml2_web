<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/inc/head.inc"%>
<%
   int u_id=user.getUserId();
   String u_Name=user.getLogonName();
   String u_FirstName=user.getFirstName();
   String u_LastName= user.getLastName();
%>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=GBK">
   <link href="style.css" rel="stylesheet" type="text/css">
   <title>密码修改</title>
</head>
<body bgColor=#ffffff leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
    <form action="editUser.action" method="POST" name =editUser>
		<table align="center" cellSpacing=1 cellPadding=1  border=1>
		 <tr><td align="center" width=100px>登录ID号：</td>
			 <td><input type="text" name="userId" size="20" value="<%=u_id%>" readonly="readonly"/></td>
		 </tr> 
		<tr>
			 <td align="center">登录名称：</td>
			 <td><input type="text" name="logonName" size="20" value="<%=u_Name%>"/></td>
	    </tr>
		 <%-- <tr>
		      <td align="center">登录名称：</td>
		      <td>name ="logonName" value="<%=u_Name%>"</td>
		 </tr> --%>
		<tr>
			<td align="center">用户名字：</td>
			<td><input type="text" name="firstName" size="20" value="<%=u_FirstName%>"/></td>
		 </tr>
		 <tr>
			<td align="center">用户姓氏：</td>
			<td><input type="text" name="lastName" size="20" value="<%=u_LastName%>"/></td>
		 </tr>
		 <tr>
			<td align="center">用户密码：</td>
			<td><input type="password" name="password" size="20" value=""/></td>
		 </tr>
		 <tr>
			<td align="center">密码确认：</td>
			<td><input type="password" name="password1" size="20" value=""/></td>
		</tr>
		<!-- <tr>
			<td align="center">管理员否：</td>
			<td>
			    <input type="radio" value="1" name="isAdmin">是&nbsp;&nbsp;&nbsp;									
			    <input type="radio" checked name="isAdmin" value="0">否
			</td>									
		</tr> -->
		<tr>
				<td align="center"><input type="submit" value="修改" name="B1"></td>
				<td align="center"><input type="reset" value="重置" name="B2"></td>
		</tr>
		</table>
	</form>		

</body>
</html>