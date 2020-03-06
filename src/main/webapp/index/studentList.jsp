<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@include file="base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学员信息</title>
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
			<h1>学员列表</h1>
			<div class="student">
				<table width="700px" border="0" align="center" cellpadding="0" 
				             cellspacing="1">
					<tr style="font-weight:bold;">
						<th>&nbsp;&nbsp;姓名</th>
						<th>所在位置</th>
						<th>科目</th>
						<th>情况</th>
					</tr>

					<c:forEach items="${students}" var="item">
						<tr>
							<td>·<a href="#">${item.realName}</a></td>
							<td>${item.address}</td>
							<td>${item.subject}</td>
							<td><img src="${basePath}/index/images/already.png" /></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			
			<div class="clear"></div>
			
			<!--分页 start-->
				<div class="page">
					<p class="page_now">
						<a class="down" href="${basePath}/student/getAllStudent?currentPage=${page.prePage}">上一页</a>
					<a class="current" href="${basePath}/student/getAllStudent?currentPage=${page.firstPage}">1</a>
					<a class="" href="${basePath}/student/getAllStudent?currentPage=2">2</a>
					<a class="" href="${basePath}/student/getAllStudent?currentPage=3">3</a>
					<u>...</u>
					<a class="down" href="${basePath}/student/getAllStudent?currentPage=${page.nextPage}">下一页</a>
					<a class="down" href="${basePath}/student/getAllStudent?currentPage=${page.lastPage}">尾页</a>
					</p>
				</div>
			<!--end-->
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
	
	<script src="${basePath}/index/js/scroll_feel.js" type="text/javascript"></script>
</body>
</html>
