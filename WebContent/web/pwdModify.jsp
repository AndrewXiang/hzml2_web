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
   <title>�����޸�</title>
</head>
<body bgColor=#ffffff leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
    <form action="editUser.action" method="POST" name =editUser>
		<table align="center" cellSpacing=1 cellPadding=1  border=1>
		 <tr><td align="center" width=100px>��¼ID�ţ�</td>
			 <td><input type="text" name="userId" size="20" value="<%=u_id%>" readonly="readonly"/></td>
		 </tr> 
		<tr>
			 <td align="center">��¼���ƣ�</td>
			 <td><input type="text" name="logonName" size="20" value="<%=u_Name%>"/></td>
	    </tr>
		 <%-- <tr>
		      <td align="center">��¼���ƣ�</td>
		      <td>name ="logonName" value="<%=u_Name%>"</td>
		 </tr> --%>
		<tr>
			<td align="center">�û����֣�</td>
			<td><input type="text" name="firstName" size="20" value="<%=u_FirstName%>"/></td>
		 </tr>
		 <tr>
			<td align="center">�û����ϣ�</td>
			<td><input type="text" name="lastName" size="20" value="<%=u_LastName%>"/></td>
		 </tr>
		 <tr>
			<td align="center">�û����룺</td>
			<td><input type="password" name="password" size="20" value=""/></td>
		 </tr>
		 <tr>
			<td align="center">����ȷ�ϣ�</td>
			<td><input type="password" name="password1" size="20" value=""/></td>
		</tr>
		<!-- <tr>
			<td align="center">����Ա��</td>
			<td>
			    <input type="radio" value="1" name="isAdmin">��&nbsp;&nbsp;&nbsp;									
			    <input type="radio" checked name="isAdmin" value="0">��
			</td>									
		</tr> -->
		<tr>
				<td align="center"><input type="submit" value="�޸�" name="B1"></td>
				<td align="center"><input type="reset" value="����" name="B2"></td>
		</tr>
		</table>
	</form>		

</body>
</html>