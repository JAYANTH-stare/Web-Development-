<%@ include file="notesSearch.html" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<html>
<body>

<%
    String notesSubject = request.getParameter("notesSubject");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/faiz", "root", "root");
        PreparedStatement ps = conn.prepareStatement("select * from giveaway_notes where subject_name=?");
        ps.setString(1, notesSubject);
        ResultSet rs = ps.executeQuery();

        // Initialize arrays to store column data and maximum column widths
        ArrayList<String[]> rowData = new ArrayList<>();
        int numColumns = rs.getMetaData().getColumnCount();
        int[] columnWidths = new int[numColumns];

        // Fetch data and calculate column widths
        while (rs.next()) {
            String[] row = new String[numColumns];
            for (int i = 1; i <= numColumns; i++) {
                String value = rs.getString(i);
                row[i - 1] = value != null ? value : ""; // Handle null values
                columnWidths[i - 1] = Math.max(columnWidths[i - 1], row[i - 1].length());
            }
            rowData.add(row);
        }

        // Display fetched data in the table with adjusted column widths
%>
    <table border="1">
        <thead>
            <tr>
                <%
                    // Generate table header
                    for (int i = 1; i <= numColumns; i++) {
                %>
                        <th><%= rs.getMetaData().getColumnName(i) %></th>
                <%
                    }
                %>
            </tr>
        </thead>
        <tbody>
            <%
                // Generate table body
                for (String[] row : rowData) {
            %>
                    <tr>
                        <%
                            // Generate table row with adjusted column widths
                            for (int i = 0; i < numColumns; i++) {
                        %>
                                <td style="width: <%= (columnWidths[i] * 10) %>px;"><%= row[i] %></td>
                        <%
                            }
                        %>
                    </tr>
            <%
                }
            %>
        </tbody>
    </table>
<%
    } catch (Exception e) {
        out.println(e);
    }
%>
</body>
</html>