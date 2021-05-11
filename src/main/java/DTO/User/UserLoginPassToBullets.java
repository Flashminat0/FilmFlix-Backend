package DTO.User;

public class UserLoginPassToBullets {
    public static String passwordTxtToBullets(String raw_password) {
        String bulletPassword = "";
        int lettersInBullets = raw_password.length();
        do {
            lettersInBullets = lettersInBullets - 1;
            bulletPassword = bulletPassword.concat("*");
        } while (lettersInBullets > 0);

        return bulletPassword;
    }
}
