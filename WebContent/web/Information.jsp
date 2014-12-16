<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%
	String message = (String) request.getAttribute("message");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=GBK">
  <title>杭州2号线WEB浏览系统</title>
     <script language="javascript">
            alert("<%=message%>");//弹窗提醒信息
            window.history.back(-1);//返回上个网页
     </script>
</head>
<body>

</body>
</html>