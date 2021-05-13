package model;

public class Description {
    private int movieID;
    private String movieName;
    private String movieDescription;

    public void setMovieID(int movieID) {
        this.movieID = movieID;
    }
//ben29
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
