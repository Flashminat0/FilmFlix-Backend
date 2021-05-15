package utils;

import model.Film;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FilmUtils {
    private static Connection conn;
    private static PreparedStatement pst;


    public static void addFilm(Film film) {

        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("INSERT INTO film(fileName, fileSize, filePath) VALUES (?,?,?)");
            pst.setString(1, film.getFileName());
            pst.setString(2, film.getFileSize());
            pst.setString(3, film.getFilePath());
            pst.executeUpdate();

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }


//
//    public List<Film> selectAllFilms() {
//        List<Film> films = new ArrayList<>();
//
//        try {
//            conn = ConnectToDB.getCon();
//            pst = conn.prepareStatement("SELECT * FROM film");
//            ResultSet result = pst.executeQuery();
//
//            while (result.next()) {
//                int movieID = result.getInt("movieID");
//                String fileName = result.getString("fileName");
//                String fileSize = result.getString("fileSize");
//                String filePath = result.getString("filePath");
//                films.add(new Film(movieID, fileName, fileSize, filePath));
//            }
//
//        } catch (Exception ex) {
//            System.out.println(ex.getMessage());
//        }
//        return films;
//    }



    public static Film selectFilm(Film film) {

        try{
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("SELECT fileName, fileSize, filePath FROM film WHERE movieID = ?",
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet result = pst.executeQuery();

            while(result.first()) {
                String fileName = result.getString("fileName");
                film.setFileName(fileName);
                String fileSize = result.getString("fileSize");
                film.setFileSize(fileSize);
                String filePath = result.getString("filePath");
                film.setFilePath(filePath);
            }
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return film;
    }




    public boolean updateFilm(Film film){
        boolean filmUpdated = false;

        try{
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("UPDATE film set  fileName = ?, fileSize = ?, filePath = ? WHERE movieID = ?");
            pst.setString(1, film.getFileName());
            pst.setString(2, film.getFileSize());
            pst.setString(3, film.getFilePath());
            pst.setInt(4, film.getMovieID());
            filmUpdated = pst.executeUpdate() > 0;

        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return filmUpdated;
    }



    public boolean deleteFilm(int movieID) {
        boolean filmDeleted = false;

        try{
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("DELETE FROM film WHERE movieID = ?");
            pst.setInt(1, movieID);
            filmDeleted = pst.executeUpdate() > 0;

        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return filmDeleted;
    }
}