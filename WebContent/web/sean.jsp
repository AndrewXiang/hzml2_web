<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
	<title>杭州1号线报表子系统</title>
	<script language="javascript" type="text/javascript">
	// <!CDATA[
	 
	function img1_onclick(id) {
		var imgName=document.getElementById(id).src.replace(/.*\/([^\/]+)\..+/,'$1');
	 
		if(imgName=="right")
		{
			document.getElementById(id).src="../supcon/img/left.gif";
			top.topFrameSet.cols="250,10,*";
		}else
		{
			document.getElementById(id).src="../supcon/img/right.gif";
			top.topFrameSet.cols="0,10,*";
		}
	}
	 
	// ]]>
	</script>
</head>

<body topmargin=0 leftmargin=0 rightmargin=0 bottommargin=0>
<table border="0" width="100%"  height="700" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle" bgcolor="86b7ff">
			<img id="img1" src="../supcon/img/left.gif" onclick="return img1_onclick('img1')" />
		</td>
	</tr>
</table>
</body>
