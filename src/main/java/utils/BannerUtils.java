package utils;

import model.Banner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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

    public static boolean EditBanner(Banner banner) {
        boolean status = false;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("UPDATE moviebanner SET movieid = ? , bannerlocation = ? WHERE movieid = ?");
            pst.setInt(1, banner.getMovieid());
            pst.setString(2, banner.getBannerlocation());
            pst.setInt(3, banner.getMovieid());
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


    public static boolean DeleteBanner(Banner banner) {
        boolean status = false;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("DELETE  FROM  moviebanner WHERE movieid=?");
            pst.setInt(1, banner.getMovieid());
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

    public static boolean SelectBanner(Banner banner) {
        boolean status = false;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("SELECT  bannerlocation FROM  moviebanner WHERE movieid=?", ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            pst.setInt(1, banner.getMovieid());
            ResultSet result = pst.executeQuery();

            result.first();
            System.out.println(result.getString("bannerlocation"));
            conn.close();

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return status;
    }
}
