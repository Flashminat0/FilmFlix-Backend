package utils;

import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UserUtils {
    private static Connection conn;
    private static PreparedStatement pst;

    public static boolean AddUser(User user) {
        boolean status = false;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("INSERT INTO users (name , email , password) VALUES (?,?,?)");
            pst.setString(1, user.getName());
            pst.setString(2, user.getEmail());
            pst.setString(3, user.getPassword());
            int result = pst.executeUpdate();
            if (result > 0) {
                status = true;
            }
            conn.close();

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

        return status;
    }
}
