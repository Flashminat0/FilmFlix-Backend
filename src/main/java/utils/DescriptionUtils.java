package utils;

import model.Banner;
import model.Description;
import java.sql.Connection;
import java.sql.PreparedStatement;



public  class DescriptionUtils {

    private static Connection conn ;
    private static PreparedStatement pst ;


    public static boolean AddDescription(Description description){

        boolean status = false;
        try{
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("insert into moviedescription (movieid, moviename, description) VALUES (?,?,?)");
            pst.setInt(1,description.getMovieID());
            pst.setString(2,description.getMovieName());
            pst.setString(3,description.getMovieDescription());
            int result = pst.executeUpdate();

            if (result > 0) {
                status = true;
            }
            conn.close();


        }catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return status;

    }

    public static boolean EditDescription(Description description) {
        boolean status = false;
        try {
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("UPDATE moviedescription SET movieid = ? , moviename = ? , description = ? WHERE movieid = ?");
            pst.setInt(1,description.getMovieID());
            pst.setString(2, description.getMovieName());
            pst.setString(3,description.getMovieDescription());
            pst.setInt(4,description.getMovieID());
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
