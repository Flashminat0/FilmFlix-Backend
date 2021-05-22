package model;

public class Description {
    private int movieID;
    private String movieName;
    private String movieDescription;

    public Description(int movieID, String movieName, String movieDescription){
        this.movieID = movieID;
        this.movieName = movieName;
        this.movieDescription = movieDescription;

    }

    public Description() {
        this.movieID = 0;
        this.movieName = "";
        this.movieDescription = "";

    }

    public void setMovieID(int movieID) {
        this.movieID = movieID;
    }

    public int getMovieID() {

        return movieID;
    }

    public void setMovieName(String movieName) {

        this.movieName = movieName;
    }

    public String getMovieName() {

        return movieName;
    }

    public void setMovieDescription(String movieDescription) {

        this.movieDescription = movieDescription;
    }

    public String getMovieDescription() {

        return movieDescription;

    }
}
