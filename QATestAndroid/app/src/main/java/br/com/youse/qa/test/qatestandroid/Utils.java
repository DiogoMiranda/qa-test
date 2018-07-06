package br.com.youse.qa.test.qatestandroid;

public class Utils {

    public static boolean isValidEmail(String email) {
        return "youser1@youse.com.br".equals(email)
                || "youser2@youse.com.br".equals(email)
                || "youser3@youse.com.br".equals(email);
    }

    public static boolean isValidPassword(String password) {
        return "12345678".equals(password);
    }
}
