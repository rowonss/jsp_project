<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-03-29
  Time: 오전 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>


<form action="view.jsp" method="post">
    이름 : <input type="text" name="name" size="10"><br/>
    주소 : <input type="text" name="address" size="30"><br/>
    좋아하는 음식 :
    <input type="checkbox" name="food" value="pizza">피자
    <input type="checkbox" name="food" value="hamburger">햄버거
    <input type="checkbox" name="food" value="chicken">치킨
    <br/>
    <input type="submit" value="전송">
</form>


</body>
</html>
