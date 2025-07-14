package SIgnUp;

import java.sql.*;

public class SighUpsub extends SignUp {
    public SighUpsub(String username, String password) {

        super(username, password);
    }

    @Override
    public boolean doesUsernameExist(String username) throws SQLException {
        boolean exists = false;
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/faiz", "root", "root")) {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM login WHERE username = ?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                exists = true;
            }
        }
        return exists;
    }
}
