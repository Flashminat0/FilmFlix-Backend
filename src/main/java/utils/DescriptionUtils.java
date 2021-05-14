package utils;

import model.Description;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class DescriptionUtils {

    private static Connection conn;
    private static PreparedStatement pst;

    public boolean AddDescription(Description description){

        boolean status = false;
        try{
            conn = ConnectToDB.getCon();
            pst = conn.prepareStatement("INSERT INTO moviedescription (movieid , moviename, moviedescription) VALUES (?,?,?)");
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


}
