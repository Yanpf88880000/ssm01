<%--
  Created by IntelliJ IDEA.
  User: 颜鹏飞
  Date: 2020/1/9
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ include file="base.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${basePath}/user/userAdd" method="post">
    用户名<input type="text" name="userName"/><br/>
    密码<input type="password" name="password"/><br/>
    性别<input type="text" name="sex"/><br/>
    年龄<input type="text" name="age"/><br/>
    电话<input type="text" name="tel"/><br/>
    <input type="submit" value="注册"/>
</form>
</body>
</html>
