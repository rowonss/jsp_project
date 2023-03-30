<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-03-29
  Time: 오후 1:34
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
    request.setCharacterEncoding("utf-8");
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<b>request.getParameter() 메서드 사용</b><br>
name 파라미터 = <%=request.getParameter("name") %>
address 파라미터 = <%=request.getParameter("address") %>
<p>
    <b>request.getParameterValues() 메서드 사용</b><br/>
    <%
        String[] values = request.getParameterValues("food");
        if(values != null){
            for(int i = 0; i < values.length; i++){
    %>
    <%= values[i] %>
    <%
            }
        }
    %>
</p>
<p>
    <b>request.getParameterNames() 메서드 사용</b><br/>
    <%
        Enumeration paramEnum = request.getParameterNames();
        while(paramEnum.hasMoreElements()){
            String name = (String)paramEnum.nextElement();
    %>
    <%=name %>
    <%
        }
    %>
</p>
<p>
    <b>request.getParameterMap() 메서드 사용</b><br/>
        <%
		Map parameterMap = request.getParameterMap();
		String[] nameParam = (String[])parameterMap.get("name");
		if(nameParam != null){
	%>
    name = <%= nameParam[0] %>
        <%
		}
	%>
</body>
</html>
