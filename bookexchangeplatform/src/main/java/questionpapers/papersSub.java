package questionpapers;

import java.sql.*;
public class papersSub extends papersGive {
    private String itemName;
    private String phoneNumber;
    private String name;

    public papersSub(String itemName, String phoneNumber,String name) {
        this.itemName = itemName;
        this.phoneNumber = phoneNumber;
        this.name = name;
    }
    @Override
    public void Display() {
        System.out.println("book name : " + itemName);
        System.out.println("ph : " + phoneNumber);
        System.out.println("name : " + name);
    }
    @Override
    public void EnterData() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/faiz", "root", "root");
            PreparedStatement ps = conn.prepareStatement("insert into giveaway_papers(subject_name, phone_number, name) values(?, ?, ?)");
            ps.setString(1, itemName);
            ps.setString(2, phoneNumber);
            ps.setString(3, name);
            int x = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}