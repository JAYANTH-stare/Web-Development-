package books;

import java.sql.*;
public class giveawaySub extends GiveawayForm {
    private String itemName;
    private String phoneNumber;
    private String price;
    private String name;

    public giveawaySub(String itemName, String phoneNumber, String price, String name) {
        this.itemName = itemName;
        this.phoneNumber = phoneNumber;
        this.price = price;
        this.name = name;
    }
    @Override
    public void Display() {
        System.out.println("book name : " + itemName);
        System.out.println("ph : " + phoneNumber);
        System.out.println("price : " + price);
        System.out.println("name : " + name);
    }

    @Override
    public void EnterData() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/faiz", "root", "root");
            PreparedStatement ps = conn.prepareStatement("insert into giveaway_books(book_name, phone_number, price, name) values(?, ?, ?, ?)");
            ps.setString(1, itemName);
            ps.setString(2, phoneNumber);
            ps.setString(3, price);
            ps.setString(4, name);
            int x = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}