<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-03-30
  Time: 오전 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form name="joinform" action="joinAction.jsp" method="post">
    <div class="loginBox">
        <div class="loginText">회원가입</div>
        <label>
            <input class="idPass" type="text" placeholder="아이디" name="userId">
            <input class="idPass" type="password" placeholder="비밀번호" name="userPassword">
            <input class="idPass" type="text" placeholder="이름" name="userName">
            <input style="margin-right: auto; margin-left: auto; display: inline" type="radio" name="userGender" value="male">
            <input style="margin-right: auto; margin-left: auto; display: inline" type="radio" name="userGender" value="female">
            <input class="idPass" type="text" placeholder="이메일" name="userEmail">
        </label>
        <div class="loginButton" onclick="document.joinform.submit()">가입 확인</div>
    </div>
</form>

</body>

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

</html>

