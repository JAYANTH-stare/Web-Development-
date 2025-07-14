<%@ include file="signupPage.html" %>
<%@ page import="java.sql.*" %>
<%@ page import="bookexchange.*" %>

<%
String username = request.getParameter("l_username");
String password = request.getParameter("l_password");

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/faiz", "root", "root");

    // Create an instance of the Login class
    Login login = new Login(username, password);

    // Check if the username is not null and not empty
    if (username != null && !username.isEmpty()) {
        // Check if the username already exists
        boolean usernameExists = .doesUsernameExist(username);

        if (usernameExists) {
            // Username already exists, display error message
            out.println("<script>alert('Username already exists. Please choose a different username.');</script>");
        } else {
            // Username does not exist, proceed with inserting new login details
            PreparedStatement insertStmt = conn.prepareStatement("INSERT INTO login(username, password) VALUES (?, ?)");
            insertStmt.setString(1, username);
            insertStmt.setString(2, password);
            int x = insertStmt.executeUpdate();
            if (x > 0) {
                out.println("<script>alert('Login details inserted successfully.');</script>");
            } else {
                out.println("<script>alert('Failed to insert login details.');</script>");
            }
            login.displayLogin();
        }
    } else {
        // If username is null or empty, display error message
        out.println("<script>alert('Username cannot be empty.');</script>");
    }
} catch (Exception e) {
    out.println(e);
}
%>
