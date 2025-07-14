<%@ include file = "signupPage.html" %>
<%@ page import = "java.sql.*" %>
<%@ page import="SIgnUp.*" %>

<%
String username = request.getParameter("l_username");
String password = request.getParameter("l_password");
SignUp s = new SignUp(username,password);
if (username != null && !username.isEmpty()) {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/faiz", "root", "root");
        // Check if the username already exists
        boolean usernameExists = s.doesUsernameExist(username);

        if (usernameExists) {
            // Username already exists, display error message
            out.println("<script>alert('Username already exists. Please choose a different username.');</script>");
        } else {
            s.sign_up();
            out.println("<script>alert('Login details inserted successfully.');</script>");
            s.display();
        }
    } else {
        // If username is null or empty, display error message
        out.println("<script>alert('Username cannot be empty.');</script>");
    }
%>