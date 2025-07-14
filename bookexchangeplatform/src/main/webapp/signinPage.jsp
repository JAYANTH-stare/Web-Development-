<%@ include file = "signinPage.html" %>
<%@page import = "java.sql.*" %>
<%@page import = "java.io.*" %>
<%@ page import = "SIgnIn.*" %>

<%
String username = request.getParameter("l_username");
String password = request.getParameter("l_password");
Login sign = new Login(username, password);
boolean y = sign.success(username, password);
if(y){
    response.sendRedirect("role.html");
}
else{
    response.sendRedirect("signinPage.html");
}

%>