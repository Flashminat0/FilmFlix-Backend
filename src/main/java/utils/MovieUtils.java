package utils;

import model.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MovieUtils {

    private static Connection conn;
    private static PreparedStatement pst;

    public static boolean AddMovie(Movie movie) {

        boolean status = false;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("INSERT INTO moviename (movieid , moviename) VALUES (?,?)");
            pst.setInt(1, movie.getMovieid());
            pst.setString(2, movie.getMoviename());
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

    public static boolean EditMovie(Movie movie) {
        boolean status = false;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("UPDATE moviename SET movieid = ? , moviename = ? WHERE movieid = ?");
            pst.setInt(1, movie.getMovieid());
            pst.setString(2, movie.getMoviename());
            pst.setInt(3, movie.getMovieid());
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

    public static boolean DeleteMovie(Movie movie) {
        boolean status = false;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("DELETE FROM moviename WHERE movieid = ?");
            pst.setInt(1, movie.getMovieid());
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

    public static String SelectMovie(Movie movie) {
        String movieName = null;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("SELECT  moviename FROM  moviename WHERE movieid=?", ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            pst.setInt(1, movie.getMovieid());
            ResultSet result = pst.executeQuery();

            if (result.first()) {
                movieName = result.getString("moviename");
                movie.setMoviename(movieName);
            }
            conn.close();

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return movieName;
    }
}
