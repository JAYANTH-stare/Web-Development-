<%@ include file="image.html" %>
<%@ page import="java.io.*, java.sql.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File Upload</title>
</head>
<body>

<%
    // Check if the request method is POST
    if (request.getMethod().equalsIgnoreCase("POST")) {
        InputStream inputStream = null;
        Part filePart = request.getPart("file");
        String filename = filePart.getSubmittedFileName();
        byte[] fileBytes = new byte[(int) filePart.getSize()];

        try {
            inputStream = filePart.getInputStream();
            inputStream.read(fileBytes);
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/faiz", "root", "root");
            PreparedStatement ps = conn.prepareStatement("INSERT INTO Images (filename, image) VALUES (?, ?)");
            ps.setString(1, filename);
            ps.setBytes(2, fileBytes);
            ps.executeUpdate();
            response.sendRedirect("uploadSuccess.html");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("uploadError.html");
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }
%>

</body>
</html>
