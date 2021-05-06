package utils;

import model.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
}
