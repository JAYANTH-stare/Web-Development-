package lecturer;

import java.sql.*;
public class giveSub extends give {
    private String notesSubject;
    private String lecturerName;
    private String phoneNumber;

    public giveSub(String notesSubject, String lecturerName,String phoneNumber) {
        this.notesSubject = notesSubject;
        this.lecturerName = lecturerName;
        this.phoneNumber = phoneNumber;
    }
    @Override
    public void Display() {
        System.out.println("book name : " + notesSubject);
        System.out.println("ph : " + lecturerName);
        System.out.println("name : " + phoneNumber);
    }
    @Override
    public void EnterData() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/faiz", "root", "root");
            PreparedStatement ps = conn.prepareStatement("insert into lecturer_giveaway(subject_name, lecturer_name, phone_number) values(?, ?, ?)");
            ps.setString(1, notesSubject);
            ps.setString(2, lecturerName);
            ps.setString(3, phoneNumber);
            int x = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}