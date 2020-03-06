<%--
  Created by IntelliJ IDEA.
  User: 颜鹏飞
  Date: 2020/1/12
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ include file="base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>南昌朝腾家教网</title>
    <link href="${basePath}/index/style/index.css" rel="stylesheet" type="text/css" />
    <link href="${basePath}/index/style/public.css" rel="stylesheet" type="text/css" />
    <script src="${basePath}/index/js/jquery.js" type="text/javascript"></script>
    <script src="${basePath}/index/js/tab.js" type="text/javascript"></script>
    <script src="${basePath}/index/js/scroll_pic.js" type="text/javascript"></script>
    <!--[if lte IE 6]>
    <script src="${basePath}/index/js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div,ul,li,dl,dt,i,span,a,p,img,em,h2');
    </script>
    <![endif]-->
</head>

<body>
<!--    头部开始    -->
<%@ include file="noticeHeader.jsp" %>
<!--    头部结束    -->

<div class="top">
    <DIV id=idContainer2 class="pic_box">
        <TABLE id=idSlider2 border=0 cellSpacing=0 cellPadding=0>
            <TBODY>
            <TR>
                <TD class=td_f><A href="#" target="_blank"><IMG src="pic/01.jpg"></A></TD>
                <TD class=td_f><A href="#" target="_blank"><IMG src="pic/02.jpg"></A></TD>
                <TD class=td_f><A href="#" target="_blank"><IMG src="pic/03.jpg"></A></TD>
            </TR></TBODY></TABLE>
        <UL id=idNum class=num></UL>
    </DIV>
    <script src="${basePath}/index/js/scroll_pic_a.js" type="text/javascript"></script>


    <div class="login">
        <div class="main">
            <div class="team">
                <dl style="width: 100%">
                    <dt><a href="#"><img src="${basePath}/index/pic/pic_c1.jpg" width="76" height="76"/></a><p>在职教师</p></dt>
                    <dd class="a1"><a href="">${show.name} </a> <img src="${basePath}/index/images/ico_1.gif"/><img src="${basePath}/index/images/ico_2.gif"/><img src="${basePath}/index/images/ico_3.gif"/></dd>
                    <dd class="a2">${show.realName}</dd>
                    <dd class="a2">${show.sex}</dd>
                    <dd class="a3">${show.address}</dd>
                    <div class="login_top"><a href="${basePath}/index/parentCenter.jsp" class="find" style="width: 121px">个人中心</a>
                        <%--<a href="${basePath}/reserve/getReserveByPage2" class="do" style="width: 121px">预约管理</a></div>--%>
                </dl>
            </div>
        </div>
    </div>
</div>

<div class="contain">
    <div class="main">
        <h1><span><a href="${basePath}/teacher/getAllTeacher">更多教员</a></span><strong>教员队伍&nbsp;&nbsp;</strong> Experts</h1>
        <div class="team">
            <dl>
                <dt><a href="#"><img src="${basePath}/index/pic/pic_c1.jpg" width="76" height="76"/></a><p>在职教师</p></dt>
                <dd class="a1"><a href="#">董教员 </a> <img src="#{basePath}/index/images/ico_1.gif"/><img src="${basePath}/index/images/ico_2.gif"/><img src="${basePath}/index/images/ico_3.gif"/></dd>
                <dd class="a2">初中语数英</dd>
                <dd class="a2">美术特长教学</dd>
                <dd class="a3">自报价：25元/小时</dd>
                <dd><img src="${basePath}/index/images/reservation.png" /></dd>
            </dl>
            <dl>
                <dt><a href="#"></a><p>在职教师</p></dt>
                <dd class="a1"><a href="#">董教员 </a> <img src="${basePath}/index/images/ico_1.gif"/><img src="${basePath}/index/images/ico_2.gif"/><img src="${basePath}/index/images/ico_3.gif"/></dd>
                <dd class="a2">初中语数英</dd>
                <dd class="a2">美术特长教学</dd>
                <dd class="a3">自报价：25元/小时</dd>
                <dd><img src="${basePath}/index/images/busy.png" /></dd>
            </dl>


        </div>
    </div>
    <div class="sidebar">
        <div class="student">
            <h1><span><a href="${basePath}/student/getAllStudent">更多学员</a></span><strong>学员信息&nbsp;&nbsp;</strong> Students</h1>
            <table cellspacing="0">
                <tr>
                    <th>&nbsp;&nbsp;姓名</th>
                    <th>所在位置</th>
                    <th>科目</th>
                    <th>情况</th>
                </tr>
                <tr>
                    <td>·<a href="#">刘学员</a></td>
                    <td>江南</td>
                    <td>高三化学</td>
                    <td><img src="${basePath}/index/images/reservation.png" /></td>
                </tr>
                <tr>
                    <td>·<a href="#">李一</a></td>
                    <td>五华</td>
                    <td>高中英语</td>
                    <td><img src="${basePath}/index/images/reservation.png" /></td>
                </tr>
                <tr>
                    <td>·<a href="#">李旦</a></td>
                    <td>五华</td>
                    <td>高中数学</td>
                    <td><img src="${basePath}/index/images/reservation.png" /></td>
                </tr>
                <tr>
                    <td>·<a href="#">李一</a></td>
                    <td>五华</td>
                    <td>高中英语</td>
                    <td><img src="${basePath}/index/images/reservation.png" /></td>
                </tr>
                <tr>
                    <td>·<a href="#">刘学员</a></td>
                    <td>江南</td>
                    <td>高三化学</td>
                    <td><img src="${basePath}/index/images/reservation.png" /></td>
                </tr>
                <tr>
                    <td>·<a href="#">周学员</a></td>
                    <td>五华</td>
                    <td>初中物理数学</td>
                    <td><img src="${basePath}/index/images/reservation.png" /></td>
                </tr>
                <tr>
                    <td>·<a href="#">李一</a></td>
                    <td>五华</td>
                    <td>高中英语</td>
                    <td><img src="${basePath}/index/images/reservation.png" /></td>
                </tr>
                <tr>
                    <td>·<a href="#">李旦</a></td>
                    <td>五华</td>
                    <td>高中数学</td>
                    <td><img src="${basePath}/index/images/reservation.png" /></td>
                </tr>
                <tr>
                    <td>·<a href="#">李一</a></td>
                    <td>五华</td>
                    <td>高中英语</td>
                    <td><img src="${basePath}/index/images/reservation.png" /></td>
                </tr>
            </table>
        </div>

    </div>

    <div class="clear"></div>

    <div class="banner"><img src="${basePath}/index/images/banner.png" width="708" height="41"/></div>

    <div class="news">
        <h1><span><a href="#">更多信息</a></span><strong>家教咨询&nbsp;&nbsp;</strong> News</h1>

        <div class="tab">
            <div id="bg" class="xixi1">
                <div id="font1" class="tab1" onMouseOver="setTab03Syn(1);document.getElementById('bg').className='xixi1'"><a href="${basePath}/notice/getAllTitleByCategoryId?categoryId=1">小学教育</a></div>
                <div id="font2" class="tab2" onMouseOver="setTab03Syn(2);document.getElementById('bg').className='xixi2'"><a href="${basePath}/notice/getAllTitleByCategoryId?categoryId=2">初中教育</a></div>
                <div id="font3" class="tab3" onMouseOver="setTab03Syn(3);document.getElementById('bg').className='xixi3'"><a href="${basePath}/notice/getAllTitleByCategoryId?categoryId=3">学习资料</a></div>
                <div id="font4" class="tab4" onMouseOver="setTab03Syn(4);document.getElementById('bg').className='xixi4'"><a href="${basePath}/notice/getAllTitleByCategoryId?categoryId=4">外语学习</a></div>
                <div id="font5" class="tab5" onMouseOver="setTab03Syn(5);document.getElementById('bg').className='xixi5'"><a href="${basePath}/notice/getAllTitleByCategoryId?categoryId=5">家教直通车</a></div>
                <div id="font6" class="tab6" onMouseOver="setTab03Syn(6);document.getElementById('bg').className='xixi6'"><a href="${basePath}/notice/getAllTitleByCategoryId?categoryId=6">学习宝典</a></div>
                <%--<div id="font7" class="tab6" onMouseOver="setTab03Syn(6);document.getElementById('bg').className='xixi6'"><a href="${basePath}/notice/getAllNoticeByPage">点击刷新</a></div>--%>
            </div>
            <div id=TabTab03Con1>
                <ul>
                    <c:forEach items="${notices}" var="item">
                        <li>·<a href="#">${item.title}</a></li>
                    </c:forEach>
                </ul>
            </div>
            <div id=TabTab03Con2 style="display:none">
                <ul>
                    <c:forEach items="${notices}" var="item">
                        <li>·<a href="#">${item.title}</a></li>
                    </c:forEach>
                </ul>
            </div>
            <div id=TabTab03Con3 style="display:none">
                <ul>
                    <c:forEach items="${notices}" var="item">
                        <li>·<a href="#">${item.title}</a></li>
                    </c:forEach>
                </ul>
            </div>
            <div id=TabTab03Con4 style="display:none">
                <ul>
                    <c:forEach items="${notices}" var="item">
                        <li>·<a href="#">${item.title}</a></li>
                    </c:forEach>
                </ul>
            </div>
            <div id=TabTab03Con5 style="display:none">
                <ul>
                    <c:forEach items="${notices}" var="item">
                        <li>·<a href="#">${item.title}</a></li>
                    </c:forEach>
                </ul>
            </div>
            <div id=TabTab03Con6 style="display:none">
                <ul>
                    <c:forEach items="${notices}" var="item">
                        <li>·<a href="#">${item.title}</a></li>
                    </c:forEach>
                </ul>
            </div>
        </div>

        <div class="resources">
            <h2>教学资源</h2>
            <div class="clear"></div>
            <dl>
                <dt><a href="#"><img src="${basePath}/index/pic/pic_d1.jpg" width="74" height="95"/></a></dt>
                <dd class="b1"><a href="#">初中考重点必备</a></dd>
                <dd class="b2">六年级奥数，语文，英文重点考题六年级奥数，语...</dd>
                <dd><a href="#"><img src="${basePath}/index/images/detail.png" /></a></dd>
            </dl>
            <dl>
                <dt><a href="#"><img src="${basePath}/index/pic/pic_d1.jpg" width="74" height="95"/></a></dt>
                <dd class="b1"><a href="#">初中考重点必备</a></dd>
                <dd class="b2">六年级奥数，语文，英文重点考题六年级奥数，语...</dd>
                <dd><a href="#"><img src="${basePath}/index/images/detail.png" /></a></dd>
            </dl>
        </div>
    </div>

    <div class="clear"></div>
</div>

<!--    页脚开始    -->
<%@ include file="footer.jsp" %>
<!--    页脚结束    -->

<script src="${basePath}/index/js/scroll_feel.js" type="text/javascript"></script>
</body>
</html>
