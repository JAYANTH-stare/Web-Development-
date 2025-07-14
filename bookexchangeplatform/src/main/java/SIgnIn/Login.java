package SIgnIn;
import java.sql.*;

interface Successful {
    boolean success(String username, String password);
}

public class Login implements Successful {
    public String email;
    public String password;
    boolean flag;
    public Login(String email, String password){
        this.email = email;
        this.password = password;
    }

    @Override
    public boolean success(String username, String password) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/faiz", "root", "root");
            String Query = "select username,password from login where username=? and password=?;";
            PreparedStatement ps = conn.prepareStatement(Query);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                System.out.println("Login Successful");
                flag = true;
            }
        } catch (Exception e) {
            System.out.println(e);
            flag = false;
        }
        return flag;
    }
}
