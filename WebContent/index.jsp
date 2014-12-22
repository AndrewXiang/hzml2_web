<%@ page contentType="text/html;charset=GBK" %>
<% 
	String location_code=request.getParameter("location_code");
	session.setMaxInactiveInterval(3600);
	session.putValue( "location_code",location_code); 
%> 
<html>
<frameset cols="250,10,*" id="topFrameSet" frameborder= "no" framespacing= "0">
  <frame src="menu.jsp" name="menu"/>
  <frame src="sean.jsp" name="sean" scrolling="no" style="border-right:1px solid black;border-left:1px solid black;"/>
  <frame src="main.jsp" name="main"/>
</frameset>
</html>
