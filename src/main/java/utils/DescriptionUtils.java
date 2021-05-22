package utils;


import model.Description;
import model.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public  class DescriptionUtils {

    private static Connection conn;
    private static PreparedStatement pst;
    private static ResultSet stmt;


    public static boolean AddDescription(Description description) {

        boolean status = false;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("insert into moviedescription (movieid, moviename, description) VALUES (?,?,?)");
            pst.setInt(1, description.getMovieID());
            pst.setString(2, description.getMovieName());
            pst.setString(3, description.getMovieDescription());
            int result = pst.executeUpdate();

            if (result > 0) {
                status = true;
            }
            conn.close();


        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return status;

    }

    public static boolean EditDescription(Description description) {
        boolean status = false;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("UPDATE moviedescription SET movieid = ? , moviename = ? , description = ? WHERE movieid = ?");
            pst.setInt(1, description.getMovieID());
            pst.setString(2, description.getMovieName());
            pst.setString(3, description.getMovieDescription());
            pst.setInt(4, description.getMovieID());
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

    public static boolean DeleteDescription(Description description) {
        boolean status = false;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("delete  from moviedescription where movieid = ?");
            pst.setInt(1, description.getMovieID());
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

    public static String SelectMovieName(Description description) {
        String movieName = null;

        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("select moviename from moviedescription where movieid = ?",
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            pst.setInt(1, description.getMovieID());
            ResultSet result = pst.executeQuery();

            if (result.first()) {
                movieName = result.getString("moviename");
                description.setMovieName(movieName);

            }
            conn.close();

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return movieName;
    }

    public static String SelectMovieDescription(Description description) {
        String movieDescription = null;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("select description from moviedescription where movieid = ?",
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            pst.setInt(1, description.getMovieID());
            ResultSet result = pst.executeQuery();

            if (result.first()) {
                movieDescription = result.getString("description");
                description.setMovieDescription(movieDescription);
            }
            conn.close();

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return movieDescription;
    }
}
