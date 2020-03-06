<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>教员信息</title>
<link href="style/public.css" rel="stylesheet" type="text/css" />
<link href="style/list.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js" type="text/javascript"></script>
<!--[if lte IE 6]>
<script src="js/iepng.js" type="text/javascript"></script>      
<script type="text/javascript">
DD_belatedPNG.fix('div,ul,li,dl,dt,dd,i,span,a,p,img,em,h2');
</script>
<![endif]-->
</head>

<body>
	<!--    头部开始    -->
	<%@ include file="noticeHeader.jsp" %>
	<!--    头部结束    -->
	
	<!--    横幅开始    -->
	<div class="banner">
		<img src="images/pic_banner.jpg" width="978" height="126"/>
	</div>
	<!--    横幅结束    -->
	
	<div class="where">
		<p><a href="#">网站主页</a>&nbsp;>&nbsp;<a href="#">教员信息 </a>&nbsp;>&nbsp;<a href="#">小学语文教员</a></p>
	</div>
	
	<div class="contain">
	
		<div class="list">
			<h1>教员注册</h1>
			<div class="list_b">
				<form action="${basePath}/teacher/teacherAdd" name="form1" method="post" enctype="multipart/form-data">
				<table width="700px" border="0" align="center" cellpadding="0" 
				             cellspacing="1" bgcolor="#CCCCCC">
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 14px;">
							用户名：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="name"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 14px;">
							密 码：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="password" name="password"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 14px;">
							姓名：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="realName"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 14px;">
							性别：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="radio" name="sex" value="男" checked="checked"/>男
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="sex" value="女"/>女
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 14px;">
							年龄：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="age"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 14px;">
							联系方式：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="tel"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 14px;">
							住址：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="address"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 14px;">
							身份：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="radio" name="identity" value="大学生" style="border: 0"/><font size="2">大学生(包括研究生)</font>
							<input type="radio" name="identity" value="教师" style="border: 0" checked="checked"/><font size="2">教师(在职/离职)</font>
							<input type="radio" name="identity" value="其他" style="border: 0" checked="checked"/><font size="2">其他</font>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 14px;">
							学历：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="education"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 14px;">
							可辅导科目：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="subject"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 14px;">
							自我介绍：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<textarea name="introduce" rows="10" cols="60"></textarea>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 14px;">
							照片：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="file" name="multifile"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9">
							&nbsp;
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="submit" value="注册" />
							<input type="reset" value="重置"/>
						</td>
					</tr>
				</table>
			</form>
			</div>
			
			<div class="clear"></div>
		</div>
		
	<div class="sidebar">
			<div class="information">
				<h1>最新资讯</h1>
				<p>· <a href="#">诗词:小升初必记古诗词70首</a></p>
				<p>· <a href="#">南昌家教网:六年级学生如何学好奥数</a></p>
				<p>· <a href="#">诗词:小升初必记古诗词70首</a></p>
				<p>· <a href="#">诗词:小升初必记古诗词70首</a></p>
				<p>· <a href="#">诗词:小升初必记古诗词70首</a></p>
				<p>· <a href="#">南昌家教网:六年级学生如何学好奥数</a></p>
				<p>· <a href="#">诗词:小升初必记古诗词70首</a></p>
				<p>· <a href="#">南昌家教网:六年级学生如何学好奥数</a></p>
				<p>· <a href="#">诗词:小升初必记古诗词70首</a></p>
			</div>
		</div>
	</div>
	
	<!--    页脚开始    -->
	<%@ include file="footer.jsp" %>
	<!--    页脚结束    -->
	
	<script src="js/scroll_feel.js" type="text/javascript"></script>
</body>
</html>
