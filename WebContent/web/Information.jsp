<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%
	String message = (String) request.getAttribute("message");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=GBK">
  <title>����2����WEB���ϵͳ</title>
     <script language="javascript">
            alert("<%=message%>");//����������Ϣ
            window.history.back(-1);//�����ϸ���ҳ
     </script>
</head>
<body>

</body>
</html>