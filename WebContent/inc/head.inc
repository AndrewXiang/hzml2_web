<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.web.model.User"%>
<%
	User user = (User) session.getAttribute("user");//��Session�л�ȡuser�����ԣ�����������
	int ad = user.getIsAdmin();                     //��ȡuser��is_admin�ֶΣ��ж��Ƿ�Ϊ����Ա
	
%>
<html>
	<head>
		<title>���ݵ���2����WEB���</title>
		<!--���ñ��뷽ʽ-->
		<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=GBK">
		<link rel="stylesheet" href="css/head.css" type="text/css">
    </head>
	<!-- ����ҳ����ʾ������ɫ���߾�ͼ��ط�ʽ-->
    <b leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<!-- ���ñ������ԣ����������ߣ�������ʾ�ͱ������-->
		<table width= "1920" border="0" cellspacing="0" cellpadding="0" align="center" background="images/nv.png" height="20">
			<tr>
				<td align="top">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="28">
						<tr>
							<!--���ÿ͵���Ϣ��ť��ʼ-->					
							<td width="18%">
								<table width="100%" border="0" height="28" background="../images/index_lm.gif">
									<tr>
										<td width="100%">
											<div align="center">
												<b> <!--�����ӻ�û���--> <a href="#">�͵���Ϣ </a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>
							<!--���ÿ͵���Ϣ��ť����-->

							<!--�����е���Ϣ��ť��ʼ-->
							<td width="18%">
								<table width="100%" border="0" height="28" background="../images/index_lm.gif">
									<tr>
										<td width="100%">
											<div align="center">
												<b><!--��ť����δʵ��--><a href="#">�е���Ϣ</a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>
							<!--�����е���Ϣ��ť����-->

							<!--���õ����Ϣ��ť��ʼ-->
							<td width="18%">
								<table width="100%" border="0" height="28" background="../images/index_lm.gif">
									<tr>
										<td width="100%">
											<div align="center">
												<b> <!--��ť����δʵ��--> <a href="#">�����Ϣ </a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>
							<!--���õ����Ϣ��ť����-->

							<!--���û�����Ϣ��ť��ʼ-->
							<td width="18%" >
								<table width="100%" border="0" height="28" background="../images/index_lm.gif">
									<tr>
										<td width="100%">
											<div align="center">
												<b> <!--��ť����δʵ��--> <a href="#">������Ϣ</a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>
							<!--���û�����Ϣ��ť����-->
                          <%
                             if(ad==1){
                          %>
							<!--�����û�������ť��ʼ-->
							<td width="18%">
								<table width="100%" border="0" height="28" background="../images/index_lm.gif">
									<tr>
										<td width="100%">
											<div align="center">
												<b><a href="userManage.jsp">�û�����</a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>
							<!--�����û�������ť����-->
						<%
							}else if (ad==0){
						%>
						    <!--���������޸İ�ť��ʼ-->
							<td width="18%">
								<table width="100%" border="0" 
									height="28" background="../images/index_lm.gif">
									<tr>
										<td width="100%">
											<div align="center">
												<b><a href="pwdModify.jsp">�����޸�</a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>	
							<!--���������޸İ�ť����-->						
						<%
							}
                        %>
							<!--�����˳�,��ת����¼ҳ��-->
							<td width="10%">
								<table width="100%" border="0"	height="28" background="../images/index_lm.gif">
									<tr>
										<td>
											<div align="center">
											   <b><a href="../index.html">�˳� </a></b>
											</div>
										</td>
									</tr>
								</table>
							</td>
							<!--�����˳���ť����-->
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<table width="1920"  border="0"  align="center" >
		<!--������Ļ�ķֱ��������е���width�Ĵ�С����ΪOCC��Ϊ1920����վ�Ļ���Ϊ1440-->
			<tr>
				<td valign="top">					
				    <!--����ҳ����ʾ��������-->			
		        </td>
		      </tr>
		 </table>
	</body>
</html>