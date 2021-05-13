package model;

public class Film {
    private int movieID;
    private String fileName;
    private String filePath;

    public int getMovieID() {
        return movieID;
    }

    public String getFileName() {
        return fileName;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setMovieID(int movieID) {
        this.movieID = movieID;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

}
