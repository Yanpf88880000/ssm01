<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@include file="base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>教员信息</title>
    <link href="style/public.css" rel="stylesheet" type="text/css" />
    <link href="style/list_info.css" rel="stylesheet" type="text/css" />
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
    <p><a href="${basePath}/index/index.jsp">网站主页</a>&nbsp;>&nbsp;<a href="${basePath}/index/isLoginIndex2.jsp">个人主页 </a>&nbsp;>&nbsp;<a href="#">个人中心</a></p>
</div>

<div class="contain">
    <h1>个人中心</h1>
    <div class="main">
        <div class="certification"><img src="images/certification.png" width="102" height="81"/></div>
        <div class="photo">
            <div class="photo_a"><img src="images/163.jpg"/> </div>
            <p>&nbsp;<img src="images/reservation.png"/> &nbsp;<img src="images/ico_4.gif"/></p>
        </div>

        <div class="detail">
            <p class="name">${show.name}，欢迎您！&nbsp;&nbsp;
            </p>
            <p>密码：${show.password}</p>
            <p>姓名：${show.realName}</p>
            <p>性别：${show.sex}</p>
            <p>年龄：${show.age}</p>
            <p>电话：${show.tel}</p>
            <p>地址：${show.address}</p>
        </div>
    </div>
    <a href="${basePath}/index/isLoginIndex2.jsp">点我返回上一页</a>
    <div class="clear"></div>

    <div class="video">
        <h2>推荐讲课视频</h2>
        <dl>
            <dt><a href="#"><img src="pic/pic_video.jpg" width="137" height="105" alt="匀速直线运动和定时器" title="匀速直线运动和定时器"/></a></dt>
            <dd><a href="#">匀速直线运动和定时器</a></dd>
            <dd>作者：郭鑫</dd>
        </dl>
        <dl>
            <dt><a href="#"><img src="pic/pic_video.jpg" width="137" height="105" alt="匀速直线运动和定时器" title="匀速直线运动和定时器"/></a></dt>
            <dd><a href="#">匀速直线运动和定时器</a></dd>
            <dd>作者：郭鑫</dd>
        </dl>
        <dl>
            <dt><a href="#"><img src="pic/pic_video.jpg" width="137" height="105" alt="匀速直线运动和定时器" title="匀速直线运动和定时器"/></a></dt>
            <dd><a href="#">匀速直线运动和定时器</a></dd>
            <dd>作者：郭鑫</dd>
        </dl>
        <dl>
            <dt><a href="#"><img src="pic/pic_video.jpg" width="137" height="105" alt="匀速直线运动和定时器" title="匀速直线运动和定时器"/></a></dt>
            <dd><a href="#">匀速直线运动和定时器</a></dd>
            <dd>作者：郭鑫</dd>
        </dl>
        <dl>
            <dt><a href="#"><img src="pic/pic_video.jpg" width="137" height="105" alt="匀速直线运动和定时器" title="匀速直线运动和定时器"/></a></dt>
            <dd><a href="#">匀速直线运动和定时器</a></dd>
            <dd>作者：郭鑫</dd>
        </dl>
        <dl>
            <dt><a href="#"><img src="pic/pic_video.jpg" width="137" height="105" alt="匀速直线运动和定时器" title="匀速直线运动和定时器"/></a></dt>
            <dd><a href="#">匀速直线运动和定时器</a></dd>
            <dd>作者：郭鑫</dd>
        </dl>
    </div>

    <div class="data">
        <h2>推荐学习资料</h2>
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
            <p class="black"><a href="#">免责声明</a>|<a href="#">关于我们</a>|<a href="#">联系我们</a>|<a href="#">帮助中心</a>|<a href="#">申请友情链接</a></p>
            <p>©2011 mz 136.com All Rights Reserved 皖ICP备05012247号</p>
            <p>【找家教，当然上梅州家教网】   全心为每一个家长服务 <img src="images/footer_b.jpg"/></p>
        </div>
    </div>
</div>
<!--    页脚结束    -->

<script src="js/scroll_feel.js" type="text/javascript"></script>

</body>
</html>
<script>
    function show() {
        alert("预约成功！请等待教师回复！");
    }
</script>