<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
	<title>���ݵ���2����WEB���������ϵͳ-����</title>
	<link rel="StyleSheet" href="../supcon/menu/dtree.css" type="text/css" />
	<script type="text/javascript" src="../supcon/menu/dtree.js"></script>
</head>

<body>

<div class="dtree">
	<a href="javascript: d.openAll();">չ��</a> | <a href="javascript: d.closeAll();">�ر�</a>
	<script type="text/javascript">
	
		d = new dTree('d');

		d.add(0,-1,'�͵���Ϣ����');					
			/* d.add(1,0,'���','');
				d.add(101,1,'���ض���','');
					d.add(10101,101,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/10101.raq','','main');
					d.add(10102,101,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/10102.raq','','main');
					d.add(10103,101,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/10103.raq','','main');
				d.add(102,1,'����ң�ض���','');
					d.add(10201,102,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/10201.raq','','main');
					d.add(10202,102,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/10202.raq','','main');
					d.add(10203,102,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/10203.raq','','main');
				d.add(103,1,'����ģ����','');
					d.add(10301,103,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/10301.raq','','main');
					d.add(10302,103,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/10302.raq','','main');
					d.add(10303,103,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/10303.raq','','main');
			d.add(2,0,'����','');
				d.add(201,2,'���ͳ��','');
					d.add(20101,201,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/20101.raq','','main');
					d.add(20102,201,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/20102.raq','','main');
					d.add(20103,201,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/20103.raq','','main');
				d.add(202,2,'�յ�ͳ��','');
					d.add(20201,202,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/20201.raq','','main');
					d.add(20202,202,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/20202.raq','','main');
					d.add(20203,202,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/20203.raq','','main');
				d.add(203,2,'ˮ��ͳ��','');
					d.add(20301,203,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/20301.raq','','main');
					d.add(20302,203,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/20302.raq','','main');
					d.add(20303,203,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/20303.raq','','main');
				d.add(204,2,'ˮϵͳͳ��','');
					d.add(20401,204,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/20401.raq','','main');
					d.add(20402,204,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/20402.raq','','main');
					d.add(20403,204,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/20403.raq','','main');
				d.add(205,2,'���ϱ���ͳ��','');
					d.add(20501,205,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/20501.raq','','main');
					d.add(20502,205,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/20502.raq','','main');
					d.add(20503,205,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/20503.raq','','main');
				d.add(206,2,'�¶�ͳ��','');
					d.add(20601,206,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/20601.raq','','main');
					d.add(20602,206,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/20602.raq','','main');
					d.add(20603,206,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/20603.raq','','main');
				d.add(207,2,'ʪ��ͳ��','');
					d.add(20701,207,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/20701.raq','','main');
					d.add(20702,207,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/20702.raq','','main');
					d.add(20703,207,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/20703.raq','','main');
			d.add(3,0,'�е�','');
				d.add(301,3,'�����豸����','');
					d.add(30101,301,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/30101.raq','','main');
					d.add(30102,301,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/30102.raq','','main');
					d.add(30303,301,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/30103.raq','','main');
				d.add(306,3,'��վ����','');
					d.add(30601,306,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/30601.raq','','main');
					d.add(30602,306,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/30602.raq','','main');
					d.add(30603,306,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/30603.raq','','main');
			d.add(4,0,'ά��','');
				d.add(401,4,'�����豸����','');
					d.add(40101,401,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/30101.raq','','main');
					d.add(40102,401,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/30102.raq','','main');
					d.add(40103,401,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/30103.raq','','main');
				d.add(402,4,'�����豸����','');						
					d.add(40201,402,'���','');
						d.add(4020101,40201,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/4020101.raq','','main');
						d.add(4020102,40201,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/4020102.raq','','main');
						d.add(4020103,40201,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/4020103.raq','','main');
					d.add(40202,402,'�յ�','');
						d.add(4020201,40202,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/4020201.raq','','main');
						d.add(4020202,40202,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/4020202.raq','','main');
						d.add(4020203,40202,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/4020203.raq','','main');
					d.add(40203,402,'ˮ��','');
						d.add(4020301,40203,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/4020301.raq','','main');
						d.add(4020302,40203,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/4020302.raq','','main');
						d.add(4020303,40203,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/4020303.raq','','main');
					d.add(40204,402,'ˮϵͳ','');
						d.add(4020401,40204,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/4020401.raq','','main');
						d.add(4020402,40204,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/4020402.raq','','main');
						d.add(4020403,40204,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/4020403.raq','','main');
				d.add(403,4,'���ϱ���ͳ��','');
					d.add(40301,403,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/20501.raq','','main');
					d.add(40302,403,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/20502.raq','','main');
					d.add(40303,403,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/20503.raq','','main');
				d.add(404,4,'�����ſ��ض���','');
					d.add(40401,404,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/40401.raq','','main');
					d.add(40402,404,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/40402.raq','','main');
					d.add(40403,404,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/40403.raq','','main'); */
			/* d.add(5,0,'�͵�','');
				d.add(501,5,'���ϱ���ͳ��','');
					d.add(50101,501,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/20501.raq','','main');
					d.add(50102,501,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/20502.raq','','main');
					d.add(50103,501,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/20503.raq','','main');
				d.add(502,5,'�����ſ��ض���','');
					d.add(50201,502,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/40401.raq','','main');
					d.add(50202,502,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/40402.raq','','main');
					d.add(50203,502,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/40403.raq','','main');
				d.add(503,5,'��վ����','');
					d.add(50301,503,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/30601.raq','','main');
					d.add(50302,503,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/30602.raq','','main');
					d.add(50303,503,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/30603.raq','','main'); */
			/* d.add(5,0,'�͵�',''); */
			/* d.add(501,0,'���ϱ���ͳ��','');
					d.add(50101,501,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/20501.raq','','main');
					d.add(50102,501,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/20502.raq','','main');
					d.add(50103,501,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/20503.raq','','main');
				d.add(502,0,'�����ſ��ض���','');
					d.add(50201,502,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/40401.raq','','main');
					d.add(50202,502,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/40402.raq','','main');
					d.add(50203,502,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/40403.raq','','main'); */
				d.add(503,0,'��վ����','');
					d.add(50301,503,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/30601.raq','','main');
					d.add(50302,503,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/30602.raq','','main');
					d.add(50303,503,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/30603.raq','','main');		
					
			/* d.add(6,0,'�ܵ�','');
				d.add(601,6,'�����豸����','');
					d.add(60101,601,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/30101.raq','','main');
					d.add(60102,601,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/30102.raq','','main');
					d.add(60103,601,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/30103.raq','','main');
				d.add(602,6,'�����豸����','');
					d.add(60202,602,'���','');
						d.add(6020201,60202,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/4020101.raq','','main');
						d.add(6020202,60202,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/4020102.raq','','main');
						d.add(6020203,60202,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/4020103.raq','','main');
					d.add(60201,602,'�յ�','');
						d.add(6020101,60201,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/4020201.raq','','main');
						d.add(6020102,60201,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/4020202.raq','','main');
						d.add(6020103,60201,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/4020203.raq','','main');
					d.add(60203,602,'ˮ��','');
						d.add(6020301,60203,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/4020301.raq','','main');
						d.add(6020302,60203,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/4020302.raq','','main');
						d.add(6020303,60203,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/4020303.raq','','main');
					d.add(60204,602,'ˮϵͳ','');
						d.add(6020401,60204,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/4020401.raq','','main');
						d.add(6020402,60204,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/4020402.raq','','main');
						d.add(6020403,60204,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/4020403.raq','','main');
				d.add(603,6,'���ϱ���ͳ��','');
					d.add(60301,603,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/20501.raq','','main');
					d.add(60302,603,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/20502.raq','','main');
					d.add(60303,603,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/20503.raq','','main');
				d.add(604,6,'�����ſ��ض���','');
					d.add(60401,604,'�ձ�','../reportJsp/HZML2_showReport.jsp?raq=/40401.raq','','main');
					d.add(60402,604,'�±�','../reportJsp/HZML2_showReport.jsp?raq=/40402.raq','','main');
					d.add(60403,604,'�걨','../reportJsp/HZML2_showReport.jsp?raq=/40403.raq','','main'); */
		document.write(d);		
		d.closeAll();
	</script>
</div>
</body>
</html>