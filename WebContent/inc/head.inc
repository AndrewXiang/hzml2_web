<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.web.model.User"%>
<%
	User user = (User) session.getAttribute("user");//从Session中获取user的属性，来进行运用
	int ad = user.getIsAdmin();                     //获取user中is_admin字段，判断是否为管理员
	
%>
<html>
	<head>
		<title>杭州地铁2号线WEB浏览</title>
		<!--设置编码方式-->
		<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=GBK">
		<link rel="stylesheet" href="css/head.css" type="text/css">
    </head>
	<!-- 设置页面显示背景颜色、边距和加载方式-->
    <b leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<!-- 设置表格属性，包括宽、高，居中显示和表格边线-->
		<table width= "1920" border="0" cellspacing="0" cellpadding="0" align="center" background="images/nv.png" height="20">
			<tr>
				<td align="top">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="28">
						<tr>
							<!--设置客调信息按钮开始-->					
							<td width="18%">
								<table width="100%" border="0" height="28" background="../images/index_lm.gif">
									<tr>
										<td width="100%">
											<div align="center">
												<b><a href="kediao.jsp">客调信息 </a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>
							<!--设置客调信息按钮结束-->

							<!--设置行调信息按钮开始-->
							<td width="18%">
								<table width="100%" border="0" height="28" background="../images/index_lm.gif">
									<tr>
										<td width="100%">
											<div align="center">
												<b><a href="xingdiao.jsp">行调信息</a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>
							<!--设置行调信息按钮结束-->

							<!--设置电调信息按钮开始-->
							<td width="18%">
								<table width="100%" border="0" height="28" background="../images/index_lm.gif">
									<tr>
										<td width="100%">
											<div align="center">
												<b><a href="diandiao.jsp">电调信息 </a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>
							<!--设置电调信息按钮结束-->

							<!--设置环调信息按钮开始-->
							<td width="18%" >
								<table width="100%" border="0" height="28" background="../images/index_lm.gif">
									<tr>
										<td width="100%">
											<div align="center">
												<b><a href="huandiao.jsp">环调信息</a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>
							<!--设置环调信息按钮结束-->
                          <%
                             if(ad==1){
                          %>
							<!--设置用户管理按钮开始-->
							<td width="18%">
								<table width="100%" border="0" height="28" background="../images/index_lm.gif">
									<tr>
										<td width="100%">
											<div align="center">
												<b><a href="userManage.jsp">用户管理</a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>
							<!--设置用户管理按钮结束-->
						<%
							}else if (ad==0){
						%>
						    <!--设置密码修改按钮开始-->
							<td width="18%">
								<table width="100%" border="0" 
									height="28" background="../images/index_lm.gif">
									<tr>
										<td width="100%">
											<div align="center">
												<b><a href="pwdModify.jsp">密码修改</a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>	
							<!--设置密码修改按钮结束-->						
						<%
							}
                        %>
							<!--设置退出,跳转到登录页面-->
							<td width="10%">
								<table width="100%" border="0"	height="28" background="../images/index_lm.gif">
									<tr>
										<td>
											<div align="center">
											   <b><a href="../index.html">退出 </a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>
							<!--设置退出按钮结束-->
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<table width="1920"  border="0"  align="center" >
		<!--根据屏幕的分辨率来进行调整width的大小，如为OCC则为1920，车站的话则为1440-->
			<tr>
				<td valign="top">					
				    <!--设置页面显示内容属性-->			
		        </td>
		      </tr>
		 </table>
	</body>
</html>