package DTO.User;

public class UserLoginPassToBullets {
    public static String passwordTxtToBullets(String raw_password) {

        char[] bullets = raw_password.toCharArray();
        int lettersInbullets = bullets.length;
        do {
            bullets[lettersInbullets - 1] = '*';
            lettersInbullets = lettersInbullets - 1;
        } while (lettersInbullets > 0);

        return bullets.toString();
    }
}
