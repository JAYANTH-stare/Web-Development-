<%@ include file="signin.html" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password"); // corrected parameter name
    boolean isAuthenticated = false; // declare isAuthenticated variable

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/faiz", "root", "root");
        PreparedStatement ps = conn.prepareStatement("select * from signup where email=? and passwords=?");
        ps.setString(1, email);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            isAuthenticated = true;
            // Redirect to giveaway.html after successful authentication
            response.sendRedirect("role.html");
        } else {
            // Debug output
            out.println("User authentication failed");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
