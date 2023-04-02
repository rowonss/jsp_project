<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-03-29
  Time: 오전 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
            <input class="idPass" type="password" placeholder="비밀번호" name="userPassword">
        </label>
        <div class="loginButton" onclick="document.loginform.submit()">로그인</div>
    </div>
</form>
<button style="margin-left: auto; margin-right: auto" onclick="location.href='joinPage.jsp'">회원가입</button>

<%--<c:out value="world" />--%>
<c:set var="username" value="김종기"/>
${username}
${pageScope.username}

<%--<c:redirect url="joinPage.jsp"/>--%>

<%!
    public static class MyMember {
        int no;
        String name;

        public int getNo() {
            return no;
        }

        public void setNo(int no) {
            this.no = no;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
    }
%>

<%
    MyMember mem = new MyMember();
    mem.setName("김종기");
    pageContext.setAttribute("mem", mem);
%>
${mem.name}
<c:set target="${mem}" property="name" value="종종"/>
${mem.name}

<c:remove var="username"/>

${username}

<c:set var="dodo" scope="application" value="두두"/>

${applicationScope.dodo}
${dodo}

<c:remove var="dodo"/>

${applicationScope.dodo}

<c:if test="${10 < 20}" var="result"/>
${result}
<c:if test="${result}" var="re2"/>
${re2}

<c:set var="re2" value="false"/>

${re2}

<c:out value="${re2}"/>

<c:if test="${re2}">
    <div>
        <label>
            <input type="button" value="ㅎㅇ">
        </label>
    </div>
</c:if>

<c:choose>
    <c:when test="${re2}">
        <div>re2</div>
    </c:when>
    <c:when test="${result}">
        <div>result</div>
    </c:when>
</c:choose>

<%!
    ArrayList<Integer> Arr = new ArrayList<>();
%>
<%
    Arr.add(3);
    Arr.add(4);
    Arr.add(5);

    pageContext.setAttribute("Arr", Arr);
%>

<ul>
    <c:forEach var="num" items="${Arr}">
        <li>${num}</li>
    </c:forEach>
</ul>

<c:url var="asdasd" value="joinAction.jsp">
    <c:param name="v1" value="10"/>
    <c:param name="v2" value="10"/>
    <c:param name="v3" value="10"/>
</c:url>

${asdasd}




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
