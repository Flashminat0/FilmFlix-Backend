package utils;

import model.Film;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class FilmUtils {
    private static Connection conn;
    private static PreparedStatement pst;

    public static boolean addFilm(Film f) {
        boolean status = false;

        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("INSERT INTO film(movieID, fileName, filePath) VALUES (?,?,?)");
            pst.setInt(1, f.getMovieID());
            pst.setString(2, f.getFileName());
            pst.setString(3, f.getFilePath());
            int result = pst.executeUpdate();
            if(result > 0){
                status = true;
            }
            else {
                status = false;
            }
            conn.close();

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return status;
    }
}