<%--
  Created by IntelliJ IDEA.
  User: 颜鹏飞
  Date: 2020/1/9
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>This is userList.jsp</h3>
<c:forEach items="${users}" var="item">
    ${item.userName}<br/>
    ${item.password}<br/>
    ${item.tel}<br/>
    <hr/>
</c:forEach>
</body>
</html>
