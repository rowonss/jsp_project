<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-03-29
  Time: 오후 4:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="User.UserDAO" %>
<%@page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="User" class="User.User" scope="page"/>
<jsp:setProperty name="User" property="userId"/>
<jsp:setProperty name="User" property="userPassword"/>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    UserDAO userDAO = new UserDAO();
    int result = userDAO.login(User.getUserId(), User.getUserPassword());
    if(result == 1){
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("location.href = 'index.jsp'");
      script.println("</script>");
    }
    else if(result == 0){
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('비밀번호가 틀립니다')");
      script.println("history.back()");
      script.println("</script>");
    }
    else if(result == -1){
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('존재하지 않는 아이디입니다')");
      script.println("history.back()");
      script.println("</script>");
    }
    else if(result == -2){
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('데이터베이스 오류 발생')");
      script.println("history.back()");
      script.println("</script>");
    }
%>

</body>
</html>
