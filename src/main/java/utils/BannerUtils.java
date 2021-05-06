package utils;

import model.Banner;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BannerUtils {
    private static Connection conn;
    private static PreparedStatement pst;

    public static boolean AddBanner(Banner banner) {
        boolean status = false;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("INSERT INTO moviebanner (movieid , bannerlocation) VALUES (?,?)");
            pst.setInt(1, banner.getMovieid());
            pst.setString(2, banner.getBannerlocation());
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

    public  static boolean EditBanner(Banner banner){



        return  false;
    }
}
