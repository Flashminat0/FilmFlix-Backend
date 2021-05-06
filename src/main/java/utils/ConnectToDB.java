package utils;

import java.sql.Connection;
import java.sql.DriverManager;



public class ConnectToDB implements MySQL {
    static Connection con ;

    public static Connection getCon() throws ClassNotFoundException {
        try {
            Class.forName(FORNAME);
            con = DriverManager.getConnection(CONNURL, USERNAME, PASSWORD);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return con;
    }
}
