package model;

public class Film {
    protected int movieID;
    protected String fileName;
    protected String fileSize;
    protected String filePath;

    //    public Film(int movieID, String fileName, String fileSize, String filePath) {
//        this.movieID = movieID;
//        this.fileName = fileName;
//        this.fileSize = fileSize;
//        this.filePath = filePath;
//    }
//
//    public Film(String fileName, String fileSize, String filePath) {
//        this.fileName = fileName;
//        this.fileSize = fileSize;
//        this.filePath = filePath;
//    }
//
    public int getMovieID() {
        return movieID;
    }

    public String getFileName() {
        return fileName;
    }

    public String getFileSize() {
        return fileSize;
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

    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }


}
