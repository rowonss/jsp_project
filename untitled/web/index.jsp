<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-03-29
  Time: 오전 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix ="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>




<html>
<head>
    <title>$Title$</title>
</head>
<body>

<form name="loginform" action="loginAction.jsp" method="post">
    <div class="loginBox">
        <div class="loginText">로그인</div>
        <label>
            <input class="idPass" type="text" placeholder="아이디" name="userId">
            <input class="idPass"  type="password" placeholder="비밀번호" name="userPassword">
        </label>
        <div class="loginButton" onclick="document.loginform.submit()">로그인</div>
    </div>
</form>
<button style="margin-left: auto; margin-right: auto" onclick="location.href='joinPage.jsp'">회원가입</button>

<c:out value="world" />


</body>
</html>

<style>
    @font-face {
        font-family: 'KCC-Ganpan';
        src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/KCC-Ganpan.woff2") format('woff2');
        font-weight: normal;
        font-style: normal;
    }

    .loginBox {
        margin-left: auto;
        margin-right: auto;
        width: 500px;
        border-radius: 10px;
        background-color: hsla(211, 28%, 70%, 0.555);
    }

    .loginText {
        font-family: 'KCC-Ganpan';
        padding: 10px;
        font-size: 25px;
        margin-left: auto;
        margin-right: auto;
        text-align: center;
    }
    .idPass {
        display: block;
        margin: 5px auto;
        width: 250px;
        height: 30px;
    }
    .loginButton {
        font-family: 'KCC-Ganpan';
        border: 1px solid black;
        background-color: hsla(34, 45%, 23%, 0.404);
        width: 250px;
        cursor: pointer;
        margin: 5px auto;
        text-align: center;
    }
</style>
