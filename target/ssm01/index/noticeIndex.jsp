<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="j${basePath}/index/s/tab.js" type="text/javascript"></script>
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
                <TD class=td_f><A href="#" target="_blank"><IMG src="${basePath}/index/pic/01.jpg"></A></TD>
                <TD class=td_f><A href="#" target="_blank"><IMG src="${basePath}/index/pic/02.jpg"></A></TD>
                <TD class=td_f><A href="#" target="_blank"><IMG src="${basePath}/index/pic/03.jpg"></A></TD>
            </TR></TBODY></TABLE>
        <UL id=idNum class=num></UL>
    </DIV>
    <script src="${basePath}/index/js/scroll_pic_a.js" type="text/javascript"></script>

    <div class="login">
        <div class="login_top"><a href="studentReg.jsp" class="find">找家教</a><a href="teacherReg.jsp" class="do">做家教</a></div>
        <form action="${basePath}/login/login" method="post">
            <p>帐号：<input type="text" name="name"/></p>
            <p>密码：<input type="password" name="password"/></p>
            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;角色：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				<%--<div class="field" style="padding-top:8px;">--%>
					 <input name="role" value = "教师" id="ishome"  type="radio" checked="checked"/>教师
					&nbsp;&nbsp;&nbsp;&nbsp;
					 <input name="role" value= "家长" id="isvouch"  type="radio" />家长
				<%--</div>--%>

			    </span>
            <br>
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" value="登录">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" value="重置">
        </form>
    </div>
</div>

<div class="contain">
    <div class="main">
        <h1><span><a href="${basePath}/teacher/getAllTeacher">更多教员</a></span><strong>教员队伍&nbsp;&nbsp;</strong> Experts</h1>
        <div class="team">
            <c:forEach items="${teachers}" var="item">
                <dl>
                    <dt><a href="teacherCenter.jsp"><img src="${basePath}/index/pic/pic_c1.jpg" width="76" height="76"/></a><p>大学老师</p></dt>
                    <dd class="a1"><a href="teacherCenter.jsp">${item.realName}</a> <img src="${basePath}/index/images/ico_1.gif"/><img src="${basePath}/index/images/ico_2.gif"/><img src="${basePath}/index/images/ico_3.gif"/></dd>
                    <dd class="a2"></dd>
                    <dd class="a2">英语特长教学</dd>
                    <dd><img src="${basePath}/index/images/busy.png" /></dd>
                </dl>
            </c:forEach>
            <dl>
                <dt><a href="teacherCenter.jsp"><img src="${basePath}/index/pic/pic_c1.jpg" width="76" height="76"/></a><p>在职教师</p></dt>
                <dd class="a1"><a href="teacherCenter.jsp">teacher1 </a> <img src="${basePath}/index/images/ico_1.gif"/><img src="${basePath}/index/images/ico_2.gif"/><img src="${basePath}/index/images/ico_3.gif"/></dd>
                <dd class="a2">初中英语</dd>
                <dd class="a2">英语教学</dd>
                <dd class="a3">自报价：25元/小时</dd>
                <dd><a href="teacherCenter.jsp"><img src="${basePath}/index/images/reservation.png" /></a></dd>
            </dl>
            <dl>
                <dt><a href="teacherCenter.jsp"><img src="${basePath}/index/pic/pic_c1.jpg" width="76" height="76"/></a><p>在职教师</p></dt>
                <dd class="a1"><a href="teacherCenter.jsp">teacher2 </a> <img src="${basePath}/index/images/ico_1.gif"/><img src="${basePath}/index/images/ico_2.gif"/><img src="${basePath}/index/images/ico_3.gif"/></dd>
                <dd class="a2">高等数学</dd>
                <dd class="a2">数学教学</dd>
                <dd class="a3">自报价：25元/小时</dd>
                <dd><a href="teacherCenter.jsp"><img src="${basePath}/index/images/reservation.png" /></a></dd>
            </dl>
            <dl>
                <dt><a href="#"></a><p>在职教师</p></dt>
                <dd class="a1"><a href="#">teacher3 </a> <img src="${basePath}/index/images/ico_1.gif"/><img src="${basePath}/index/images/ico_2.gif"/><img src="${basePath}/index/images/ico_3.gif"/></dd>
                <dd class="a2">java基础</dd>
                <dd class="a2">java特长教学</dd>
                <dd class="a3">自报价：25元/小时</dd>
                <dd><img src="${basePath}/index/images/busy.png" /></dd>
            </dl>
            <dl>
                <dt><a href="#"><img src="${basePath}/index/pic/pic_c1.jpg" width="76" height="76"/></a><p>在职教师</p></dt>
                <dd class="a1"><a href="#">teacher4 </a> <img src="images/ico_1.gif"/><img src="${basePath}/index/images/ico_2.gif"/><img src="${basePath}/index/images/ico_3.gif"/></dd>
                <dd class="a2">大学英语</dd>
                <dd class="a2">英语特长教学</dd>
                <dd class="a3">自报价：25元/小时</dd>
                <dd><img src="${basePath}/index/images/have.png" /></dd>
            </dl>
            <dl>
                <dt><a href="#"></a><p>在职教师</p></dt>
                <dd class="a1"><a href="#">teacher5 </a> <img src="${basePath}/index/images/ico_1.gif"/><img src="${basePath}/index/images/ico_2.gif"/><img src="${basePath}/index/images/ico_3.gif"/></dd>
                <dd class="a2">大学语文</dd>
                <dd class="a2">语文特长教学</dd>
                <dd class="a3">自报价：25元/小时</dd>
                <dd><img src="${basePath}/index/images/busy.png" /></dd>
            </dl>
            <dl>
                <dt><a href="#"><img src="${basePath}/index/pic/pic_c1.jpg" width="76" height="76"/></a><p>在职教师</p></dt>
                <dd class="a1"><a href="#">teacher6</a> <img src="${basePath}/index/images/ico_1.gif"/><img src="${basePath}/index/images/ico_2.gif"/><img src="${basePath}/index/images/ico_3.gif"/></dd>
                <dd class="a2">初中数学</dd>
                <dd class="a2">数学特长教学</dd>
                <dd class="a3">自报价：25元/小时</dd>
                <dd><img src="${basePath}/index/images/reservation.png" /></dd>
            </dl>

            <p align="center">
                当前页面${page.pageNo}
                <a href="${basePath}/teacher/getAllTeacher?currentPage=${page.firstPage}">首页</a>
                <a href="${basePath}/teacher/getAllTeacher?currentPage=${page.prePage}">上一页</a>
                <a href="${basePath}/teacher/getAllTeacher?currentPage=${page.nextPage}">下一页</a>
                <a href="${basePath}/teacher/getAllTeacher?currentPage=${page.lastPage}">尾页</a>
                共${page.pageCount}页
            </p>

        </div>
    </div>
    <div class="sidebar">
        <div class="student">
            <h1><span><a href="${basePath}/student/getAllStudent">更多信息</a></span><strong>学员信息&nbsp;&nbsp;</strong> Students</h1>
            <table cellspacing="0">
                <tr>
                    <th>&nbsp;&nbsp;姓名</th>
                    <th>所在位置</th>
                    <th>科目</th>
                    <th>情况</th>
                </tr>
                <tr>
                    <td>·<a href="#">张三</a></td>
                    <td>北京</td>
                    <td>大学英语</td>
                    <td><img src="${basePath}/index/images/already.png" /></td>
                </tr>
                <tr>
                    <td>·<a href="#">张三</a></td>
                    <td>北京</td>
                    <td>大学英语</td>
                    <td><img src="${basePath}/index/images/already.png" /></td>
                </tr>
                <tr>
                    <td>·<a href="#">张三</a></td>
                    <td>北京</td>
                    <td>大学英语</td>
                    <td><img src="i${basePath}/index/mages/already.png" /></td>
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
                    <td>·<a href="#">张三</a></td>
                    <td>北京</td>
                    <td>大学英语</td>
                    <td><img src="${basePath}/index/images/already.png" /></td>
                </tr>
                <tr>
                    <td>·<a href="#">张三</a></td>
                    <td>北京</td>
                    <td>大学英语</td>
                    <td><img src="${basePath}/index/images/already.png" /></td>
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
                    <td>·<a href="#">张三</a></td>
                    <td>北京</td>
                    <td>大学英语</td>
                    <td><img src="${basePath}/index/images/already.png" /></td>
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
