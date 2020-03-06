<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@include file="base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>教员信息</title>
<link href="${basePath}/index/style/public.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/index/style/list.css" rel="stylesheet" type="text/css" />
<script src="${basePath}/index/js/jquery.js" type="text/javascript"></script>
<!--[if lte IE 6]>
<script src="${basePath}/index/js/iepng.js" type="text/javascript"></script>
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
		<img src="${basePath}/index/images/pic_banner.jpg" width="978" height="126"/>
	</div>
	<!--    横幅结束    -->
	
	<div class="where">
		<p><a href="#">网站主页</a>&nbsp;>&nbsp;<a href="#">教员信息 </a>&nbsp;>&nbsp;<a href="#">小学语文教员</a></p>
	</div>
	
	<div class="contain">
	
		<div class="list">
			<h1>教员列表</h1>
			<div class="list_b">
				<c:forEach items="${teachers}" var="item">
					<dl>
						<dt><a href="${basePath}/index/teacherCenter.jsp"><img src="${basePath}/index/pic/pic_c1.jpg" width="76" height="76"/></a><p>大学老师</p></dt>
						<dd class="a1"><a href="${basePath}/index/teacherCenter.jsp">${item.realName}</a> <img src="${basePath}/index/images/ico_1.gif"/><img src="${basePath}/index/images/ico_2.gif"/><img src="${basePath}/index/images/ico_3.gif"/></dd>
						<dd class="a2">${item.subject}</dd>
						<dd class="a2">${item.education}</dd>
						<dd><img src="${basePath}/index/images/busy.png" /></dd>
					</dl>
				</c:forEach>
			</div>
			
			<div class="clear"></div>
			
			<!--分页 start-->
				<div class="page">
					<p class="page_now">
						<a class="down" href="${basePath}/teacher/getAllTeacher?currentPage=${page.prePage}">上一页</a>
					<a class="current" href="${basePath}/teacher/getAllTeacher?currentPage=1">1</a>
					<a class="" href="${basePath}/teacher/getAllTeacher?currentPage=2">2</a>
					<a class="" href="${basePath}/teacher/getAllTeacher?currentPage=3">3</a>
					<u>...</u>
					<a class="down" href="${basePath}/teacher/getAllTeacher?currentPage=${page.nextPage}">下一页</a>
					<a class="down" href="${basePath}/teacher/getAllTeacher?currentPage=${page.lastPage}">尾页</a>
					</p>
				</div>
			<!--end-->
		</div>
		
		<div class="sidebar">
			<div class="classification">
				<h1>教员分类</h1>
				<div class="list_a">
					<dl>
						<dt>在职教师</dt>
						<dd class="page_on"><a href="#">小学语文</a></dd>
						<dd><a href="#">小学数学</a></dd>
						<dd><a href="#">小学英语</a></dd>
						<dd><a href="#">初中全科</a></dd>
						<dd><a href="#">初中语文</a></dd>
						<dd><a href="#">初中数学</a></dd>
						<dd><a href="#">初中物理</a></dd>
						<dd><a href="#">初中英文</a></dd>
						<dd><a href="#">初中化学</a></dd>
						<dd><a href="#">其他特长</a></dd>
					</dl>
					<dl>
						<dt>退休教师</dt>
						<dd><a href="#">小学语文</a></dd>
						<dd><a href="#">小学数学</a></dd>
						<dd><a href="#">小学英语</a></dd>
						<dd><a href="#">初中全科</a></dd>
						<dd><a href="#">初中语文</a></dd>
						<dd><a href="#">初中数学</a></dd>
						<dd><a href="#">初中物理</a></dd>
						<dd><a href="#">初中英文</a></dd>
						<dd><a href="#">初中化学</a></dd>
						<dd><a href="#">其他特长</a></dd>
					</dl>
					<dl>
						<dt>在校学生</dt>
						<dd><a href="#">小学语文</a></dd>
						<dd><a href="#">小学数学</a></dd>
						<dd><a href="#">小学英语</a></dd>
						<dd><a href="#">初中全科</a></dd>
						<dd><a href="#">初中语文</a></dd>
						<dd><a href="#">初中数学</a></dd>
						<dd><a href="#">初中物理</a></dd>
						<dd><a href="#">初中英文</a></dd>
						<dd><a href="#">初中化学</a></dd>
						<dd><a href="#">其他特长</a></dd>
					</dl>
					<dl>
						<dt>外教师</dt>
						<dd><a href="#">外语培训</a></dd>
					</dl>
				</div>
			</div>
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
	
	<script src="${basePath}/index/js/scroll_feel.js" type="text/javascript"></script>
</body>
</html>
