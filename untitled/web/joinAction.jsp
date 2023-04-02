<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="User.UserDAO" %>
<%@page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="User" class="User.User" scope="page"/>
<jsp:setProperty name="User" property="userId"/>
<jsp:setProperty name="User" property="userPassword"/>
<jsp:setProperty name="User" property="userName"/>
<jsp:setProperty name="User" property="userGender"/>
<jsp:setProperty name="User" property="userEmail"/>


<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    UserDAO userDAO = new UserDAO();
    PrintWriter script = response.getWriter();
    int result = userDAO.join(User.getUserId(), User.getUserPassword(), User.getUserName(), User.getUserGender(), User.getUserEmail());
    if(result == 1){
        script.println("<script>");
        script.println("location.href = 'index.jsp'");
        script.println("</script>");
    } else if (result == -1) {
        script.println("<script>");
        script.println("alert('실패여')");
        script.println("location.href = 'index.jsp'");
        script.println("</script>");
    }


%>

</body>
</html>
