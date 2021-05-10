package DTO.User;

public class UserLoginPassToBullets {
    public static String passwordTxtToBullets(String raw_password) {
        String bulletpassword = "";
        int lettersInbullets = raw_password.length();
        do {
            lettersInbullets = lettersInbullets - 1;
            bulletpassword = bulletpassword.concat("*");
        } while (lettersInbullets > 0);

        return bulletpassword;
    }
}
