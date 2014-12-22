<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/inc/head.inc"%>
<%
    String location_code=request.getParameter("location_code");
    session.setMaxInactiveInterval(3600);
    session.putValue( "location_code",location_code); 
%>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=GBK">
   <link href="style.css" rel="stylesheet" type="text/css">
   <title>密码修改</title>
</head>
<body bgColor=#ffffff leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">	
    <table width= "1920" border="0" align="center" >
	 <tr>
		<td align="top">
			<iframe  width="160" height="768"  src="menu.jsp"   name="menu" frameborder="1"></iframe>
		</td>
		<td >
			<iframe width="1750" height ="768" src="2_main.jsp" name="main" frameborder="1"></iframe>			
		</td>	
	</tr>
	</table>
</body>
</html>
   