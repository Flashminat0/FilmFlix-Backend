package model;

public class User {
    private int userID;
    private String email;
    private String name;
    private String password;

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String encryptedPassword(String word_password) {
        char[] encrypt_password = word_password.toCharArray();

        for (char letter : encrypt_password) {
            int ascii = userID * letter + userID;
        }

        return encrypt_password.toString();
    }

}
