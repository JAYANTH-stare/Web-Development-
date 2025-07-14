package SIgnUp;
import java.sql.*;
interface CheckUsernamee {
    boolean doesUsernameExist(String username) throws SQLException;
}
public class SignUp implements CheckUsernamee {
    public String username;
    public String password;

    public SignUp(String username, String password){
        this.username = username;
        this.password = password;
    }
    public void display(){
        System.out.println("Signed Up user details: ");
        System.out.println("UserName: " + username);
        System.out.println("Password: " + password);
    }
    public void sign_up() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/faiz", "root", "root");
            PreparedStatement ps = conn.prepareStatement("insert into login(username, password) values(?, ?)");
            ps.setString(1, username);
            ps.setString(2, password);
            int x = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
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