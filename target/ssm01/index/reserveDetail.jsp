<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"  %>
<%@ include file="base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>教员信息</title>
    <link href="${basePath}/index/style/public.css" rel="stylesheet" type="text/css"/>
    <link href="${basePath}/index/style/list_info.css" rel="stylesheet" type="text/css"/>
    <script src="${basePath}/index/js/jquery.js" type="text/javascript"></script>
    <!--[if lte IE 6]>
    <script src="${basePath}/index/js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div,ul,li,dl,dt,dd,i,span,a,p,img,em,h2');
    </script>
    <![endif]-->
    <style type="text/css">
        .info{
            font-family: microsoft yahei;
            font-size: 16px;
            color: rgba(169, 169, 169, 0.84);
            padding-bottom: 10px;
            padding-left: 35px;
        }
    </style>
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
    <p><a href="${basePath}/">网站主页</a>&nbsp;>&nbsp;<a href="">个人主页</a>&nbsp;>&nbsp;<a href="#">预约管理</a></p>
</div>

<div class="contain">
    <h1>预约管理</h1>
    <div class="main">
        <div class="certification"><img src="${basePath}/index/images/certification.png" width="102" height="81"/></div>
        <div class="photo">
            <div class="photo_a"></div>
            <p>&nbsp;<img src="${basePath}/index/images/reservation.png"/> &nbsp;<img src="${basePath}/index/images/ico_4.gif"/></p>
        </div>

        <div class="detail">
            <p class="name">我的预约&nbsp;&nbsp;
                <img src="${basePath}/index/images/ico_1.gif"/>&nbsp;
                <img src="${basePath}/index/images/ico_2.gif"/>&nbsp;
                <img src="${basePath}/index/images/ico_3.gif"/>
                <a href="#" class="do" style="width: 121px;margin-left: 150px;color: black;"></a>
            </p>
            <c:forEach items="${reserves}" var="item" varStatus="loop">
            <p class="info">预约ID:  ${item.id}</p>
            <p class="info">教师姓名:  ${teachers[loop.index].name}</p>
            <p class="info">教师电话: ${teachers[loop.index].tel}</p>
            <p class="info">学员姓名:  ${students[loop.index].name}</p>
            <p class="info">学员电话:  ${students[loop.index].tel}</p>
            <p class="info">预约状态:  ${item.reserveStatus}</p>
            </c:forEach>
            <p class="info">操作:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#"><img src="${basePath}/index/images/read.png" alt="查看" title="查看"/></a>
                <a href="#"><img src="${basePath}/index/images/xiugai.png" alt="修改" title="修改"/></a>
                <%--<a href="#" class="removeUser"><img src="${basePath}/admin/img/schu.png" alt="删除" title="删除"/></a>--%>
                <a href="#" ><img src="${basePath}/index/images/schu.png" alt="删除" title="删除"/></a>
                <a href="${basePath}/index/index.jsp">点我返回主页</a>
            </p>
        </div>
    </div>

    <div class="clear"></div>

    <div class="video">
        <h2>我的讲课视频</h2>
        <dl>
            <dt><a href="#"><img src="${basePath}/index/pic/pic_video.jpg" width="137" height="105" alt="匀速直线运动和定时器" title="匀速直线运动和定时器"/></a>
            </dt>
            <dd><a href="#">匀速直线运动和定时器</a></dd>
            <dd>作者：郭鑫</dd>
        </dl>
    </div>

    <div class="data">
        <h2>龚教员学习资料</h2>
        <ul>
            <li>· <a href="#">登录他人空间，拖动滚动条时播放器和下面的工具栏忽隐忽现？</a></li>
            <li>· <a href="#">取回密码后，为什么这个密码登不上去？能否给我初始密码？</a></li>
            <li>· <a href="#">修改密码？</a></li>
            <li>· <a href="#">登录他人空间，拖动滚动条时播放器和下面的工具栏忽隐忽现？</a></li>
            <li>· <a href="#">取回密码后，为什么这个密码登不上去？能否给我初始密码？</a></li>
            <li>· <a href="#">修改密码？</a></li>
            <li>· <a href="#">登录他人空间，拖动滚动条时播放器和下面的工具栏忽隐忽现？</a></li>
            <li>· <a href="#">取回密码后，为什么这个密码登不上去？能否给我初始密码？</a></li>
            <li>· <a href="#">修改密码？</a></li>
            <li>· <a href="#">取回密码后，为什么这个密码登不上去？能否给我初始密码？</a></li>
        </ul>
    </div>
</div>


<!--    页脚开始    -->
<div class="footer">
    <div class="footer_a">
        <div class="logo_a"><a href="#"><img src="images/logo_2.png" width="123" height="33"/></a></div>
        <div class="footer_r">
            <p class="black"><a href="#">免责声明</a>|<a href="#">关于我们</a>|<a href="#">联系我们</a>|<a href="#">帮助中心</a>|<a
                    href="#">申请友情链接</a></p>
            <p>©2011 mz 136.com All Rights Reserved 皖ICP备05012247号</p>
            <p>【找家教，当然上梅州家教网】 全心为每一个家长服务 <img src="images/footer_b.jpg"/></p>
        </div>
    </div>
</div>
<!--    页脚结束    -->

<script src="${basePath}/index/js/scroll_feel.js" type="text/javascript"></script>
</body>
</html>
