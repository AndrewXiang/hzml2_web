<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
	<title>杭州地铁2号线WEB浏览报表子系统-导航</title>
	<link rel="StyleSheet" href="../supcon/menu/dtree.css" type="text/css" />
	<script type="text/javascript" src="../supcon/menu/dtree.js"></script>
</head>

<body>

<div class="dtree">
	<a href="javascript: d.openAll();">展开</a> | <a href="javascript: d.closeAll();">关闭</a>
	<script type="text/javascript">
	
		d = new dTree('d');

		d.add(0,-1,'行调信息导航');					
			/* d.add(1,0,'电调','');
				d.add(101,1,'开关动作','');
					d.add(10101,101,'日报','../reportJsp/HZML2_showReport.jsp?raq=/10101.raq','','main');
					d.add(10102,101,'月报','../reportJsp/HZML2_showReport.jsp?raq=/10102.raq','','main');
					d.add(10103,101,'年报','../reportJsp/HZML2_showReport.jsp?raq=/10103.raq','','main');
				d.add(102,1,'开关遥控动作','');
					d.add(10201,102,'日报','../reportJsp/HZML2_showReport.jsp?raq=/10201.raq','','main');
					d.add(10202,102,'月报','../reportJsp/HZML2_showReport.jsp?raq=/10202.raq','','main');
					d.add(10203,102,'年报','../reportJsp/HZML2_showReport.jsp?raq=/10203.raq','','main');
				d.add(103,1,'常用模拟量','');
					d.add(10301,103,'日报','../reportJsp/HZML2_showReport.jsp?raq=/10301.raq','','main');
					d.add(10302,103,'月报','../reportJsp/HZML2_showReport.jsp?raq=/10302.raq','','main');
					d.add(10303,103,'年报','../reportJsp/HZML2_showReport.jsp?raq=/10303.raq','','main');
			d.add(2,0,'环调','');
				d.add(201,2,'风机统计','');
					d.add(20101,201,'日报','../reportJsp/HZML2_showReport.jsp?raq=/20101.raq','','main');
					d.add(20102,201,'月报','../reportJsp/HZML2_showReport.jsp?raq=/20102.raq','','main');
					d.add(20103,201,'年报','../reportJsp/HZML2_showReport.jsp?raq=/20103.raq','','main');
				d.add(202,2,'空调统计','');
					d.add(20201,202,'日报','../reportJsp/HZML2_showReport.jsp?raq=/20201.raq','','main');
					d.add(20202,202,'月报','../reportJsp/HZML2_showReport.jsp?raq=/20202.raq','','main');
					d.add(20203,202,'年报','../reportJsp/HZML2_showReport.jsp?raq=/20203.raq','','main');
				d.add(203,2,'水泵统计','');
					d.add(20301,203,'日报','../reportJsp/HZML2_showReport.jsp?raq=/20301.raq','','main');
					d.add(20302,203,'月报','../reportJsp/HZML2_showReport.jsp?raq=/20302.raq','','main');
					d.add(20303,203,'年报','../reportJsp/HZML2_showReport.jsp?raq=/20303.raq','','main');
				d.add(204,2,'水系统统计','');
					d.add(20401,204,'日报','../reportJsp/HZML2_showReport.jsp?raq=/20401.raq','','main');
					d.add(20402,204,'月报','../reportJsp/HZML2_showReport.jsp?raq=/20402.raq','','main');
					d.add(20403,204,'年报','../reportJsp/HZML2_showReport.jsp?raq=/20403.raq','','main');
				d.add(205,2,'故障报警统计','');
					d.add(20501,205,'日报','../reportJsp/HZML2_showReport.jsp?raq=/20501.raq','','main');
					d.add(20502,205,'月报','../reportJsp/HZML2_showReport.jsp?raq=/20502.raq','','main');
					d.add(20503,205,'年报','../reportJsp/HZML2_showReport.jsp?raq=/20503.raq','','main');
				d.add(206,2,'温度统计','');
					d.add(20601,206,'日报','../reportJsp/HZML2_showReport.jsp?raq=/20601.raq','','main');
					d.add(20602,206,'月报','../reportJsp/HZML2_showReport.jsp?raq=/20602.raq','','main');
					d.add(20603,206,'年报','../reportJsp/HZML2_showReport.jsp?raq=/20603.raq','','main');
				d.add(207,2,'湿度统计','');
					d.add(20701,207,'日报','../reportJsp/HZML2_showReport.jsp?raq=/20701.raq','','main');
					d.add(20702,207,'月报','../reportJsp/HZML2_showReport.jsp?raq=/20702.raq','','main');
					d.add(20703,207,'年报','../reportJsp/HZML2_showReport.jsp?raq=/20703.raq','','main'); */
			/* d.add(3,0,'行调',''); */
				d.add(301,0,'供电设备故障','');
					d.add(30101,301,'日报','../reportJsp/HZML2_showReport.jsp?raq=/30101.raq','','main');
					d.add(30102,301,'月报','../reportJsp/HZML2_showReport.jsp?raq=/30102.raq','','main');
					d.add(30303,301,'年报','../reportJsp/HZML2_showReport.jsp?raq=/30103.raq','','main');
				d.add(306,0,'车站客流','');
					d.add(30601,306,'日报','../reportJsp/HZML2_showReport.jsp?raq=/30601.raq','','main');
					d.add(30602,306,'月报','../reportJsp/HZML2_showReport.jsp?raq=/30602.raq','','main');
					d.add(30603,306,'年报','../reportJsp/HZML2_showReport.jsp?raq=/30603.raq','','main');
			/* d.add(4,0,'维调','');
				d.add(401,4,'供电设备故障','');
					d.add(40101,401,'日报','../reportJsp/HZML2_showReport.jsp?raq=/30101.raq','','main');
					d.add(40102,401,'月报','../reportJsp/HZML2_showReport.jsp?raq=/30102.raq','','main');
					d.add(40103,401,'年报','../reportJsp/HZML2_showReport.jsp?raq=/30103.raq','','main');
				d.add(402,4,'机电设备故障','');						
					d.add(40201,402,'风机','');
						d.add(4020101,40201,'日报','../reportJsp/HZML2_showReport.jsp?raq=/4020101.raq','','main');
						d.add(4020102,40201,'月报','../reportJsp/HZML2_showReport.jsp?raq=/4020102.raq','','main');
						d.add(4020103,40201,'年报','../reportJsp/HZML2_showReport.jsp?raq=/4020103.raq','','main');
					d.add(40202,402,'空调','');
						d.add(4020201,40202,'日报','../reportJsp/HZML2_showReport.jsp?raq=/4020201.raq','','main');
						d.add(4020202,40202,'月报','../reportJsp/HZML2_showReport.jsp?raq=/4020202.raq','','main');
						d.add(4020203,40202,'年报','../reportJsp/HZML2_showReport.jsp?raq=/4020203.raq','','main');
					d.add(40203,402,'水泵','');
						d.add(4020301,40203,'日报','../reportJsp/HZML2_showReport.jsp?raq=/4020301.raq','','main');
						d.add(4020302,40203,'月报','../reportJsp/HZML2_showReport.jsp?raq=/4020302.raq','','main');
						d.add(4020303,40203,'年报','../reportJsp/HZML2_showReport.jsp?raq=/4020303.raq','','main');
					d.add(40204,402,'水系统','');
						d.add(4020401,40204,'日报','../reportJsp/HZML2_showReport.jsp?raq=/4020401.raq','','main');
						d.add(4020402,40204,'月报','../reportJsp/HZML2_showReport.jsp?raq=/4020402.raq','','main');
						d.add(4020403,40204,'年报','../reportJsp/HZML2_showReport.jsp?raq=/4020403.raq','','main');
				d.add(403,4,'故障报警统计','');
					d.add(40301,403,'日报','../reportJsp/HZML2_showReport.jsp?raq=/20501.raq','','main');
					d.add(40302,403,'月报','../reportJsp/HZML2_showReport.jsp?raq=/20502.raq','','main');
					d.add(40303,403,'年报','../reportJsp/HZML2_showReport.jsp?raq=/20503.raq','','main');
				d.add(404,4,'屏蔽门开关动作','');
					d.add(40401,404,'日报','../reportJsp/HZML2_showReport.jsp?raq=/40401.raq','','main');
					d.add(40402,404,'月报','../reportJsp/HZML2_showReport.jsp?raq=/40402.raq','','main');
					d.add(40403,404,'年报','../reportJsp/HZML2_showReport.jsp?raq=/40403.raq','','main');
			d.add(5,0,'客调','');
				d.add(501,5,'故障报警统计','');
					d.add(50101,501,'日报','../reportJsp/HZML2_showReport.jsp?raq=/20501.raq','','main');
					d.add(50102,501,'月报','../reportJsp/HZML2_showReport.jsp?raq=/20502.raq','','main');
					d.add(50103,501,'年报','../reportJsp/HZML2_showReport.jsp?raq=/20503.raq','','main');
				d.add(502,5,'屏蔽门开关动作','');
					d.add(50201,502,'日报','../reportJsp/HZML2_showReport.jsp?raq=/40401.raq','','main');
					d.add(50202,502,'月报','../reportJsp/HZML2_showReport.jsp?raq=/40402.raq','','main');
					d.add(50203,502,'年报','../reportJsp/HZML2_showReport.jsp?raq=/40403.raq','','main');
				d.add(503,5,'车站客流','');
					d.add(50301,503,'日报','../reportJsp/HZML2_showReport.jsp?raq=/30601.raq','','main');
					d.add(50302,503,'月报','../reportJsp/HZML2_showReport.jsp?raq=/30602.raq','','main');
					d.add(50303,503,'年报','../reportJsp/HZML2_showReport.jsp?raq=/30603.raq','','main'); 
			 d.add(6,0,'总调','');
				d.add(601,6,'供电设备故障','');
					d.add(60101,601,'日报','../reportJsp/HZML2_showReport.jsp?raq=/30101.raq','','main');
					d.add(60102,601,'月报','../reportJsp/HZML2_showReport.jsp?raq=/30102.raq','','main');
					d.add(60103,601,'年报','../reportJsp/HZML2_showReport.jsp?raq=/30103.raq','','main');
				d.add(602,6,'机电设备故障','');
					d.add(60202,602,'风机','');
						d.add(6020201,60202,'日报','../reportJsp/HZML2_showReport.jsp?raq=/4020101.raq','','main');
						d.add(6020202,60202,'月报','../reportJsp/HZML2_showReport.jsp?raq=/4020102.raq','','main');
						d.add(6020203,60202,'年报','../reportJsp/HZML2_showReport.jsp?raq=/4020103.raq','','main');
					d.add(60201,602,'空调','');
						d.add(6020101,60201,'日报','../reportJsp/HZML2_showReport.jsp?raq=/4020201.raq','','main');
						d.add(6020102,60201,'月报','../reportJsp/HZML2_showReport.jsp?raq=/4020202.raq','','main');
						d.add(6020103,60201,'年报','../reportJsp/HZML2_showReport.jsp?raq=/4020203.raq','','main');
					d.add(60203,602,'水泵','');
						d.add(6020301,60203,'日报','../reportJsp/HZML2_showReport.jsp?raq=/4020301.raq','','main');
						d.add(6020302,60203,'月报','../reportJsp/HZML2_showReport.jsp?raq=/4020302.raq','','main');
						d.add(6020303,60203,'年报','../reportJsp/HZML2_showReport.jsp?raq=/4020303.raq','','main');
					d.add(60204,602,'水系统','');
						d.add(6020401,60204,'日报','../reportJsp/HZML2_showReport.jsp?raq=/4020401.raq','','main');
						d.add(6020402,60204,'月报','../reportJsp/HZML2_showReport.jsp?raq=/4020402.raq','','main');
						d.add(6020403,60204,'年报','../reportJsp/HZML2_showReport.jsp?raq=/4020403.raq','','main');
				d.add(603,6,'故障报警统计','');
					d.add(60301,603,'日报','../reportJsp/HZML2_showReport.jsp?raq=/20501.raq','','main');
					d.add(60302,603,'月报','../reportJsp/HZML2_showReport.jsp?raq=/20502.raq','','main');
					d.add(60303,603,'年报','../reportJsp/HZML2_showReport.jsp?raq=/20503.raq','','main');
				d.add(604,6,'屏蔽门开关动作','');
					d.add(60401,604,'日报','../reportJsp/HZML2_showReport.jsp?raq=/40401.raq','','main');
					d.add(60402,604,'月报','../reportJsp/HZML2_showReport.jsp?raq=/40402.raq','','main');
					d.add(60403,604,'年报','../reportJsp/HZML2_showReport.jsp?raq=/40403.raq','','main'); */
		document.write(d);		
		d.closeAll();
	</script>
</div>
</body>
</html>