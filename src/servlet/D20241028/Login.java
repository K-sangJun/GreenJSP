package servlet.D20241028;

import javax.servlet.http.HttpSession;

public class Login {

    public static String loginCheck(String id, String pw, HttpSession session) {
        String dir = "fail.jsp";

        if (id.equals("green") && pw.equals("p1234")) {
            session.setAttribute("id", id);
            dir = "success.jsp";
        }

        return dir;
    }

    public static String loginCheck(String id, String pw, int age, HttpSession session) {
        String dir = "fail.jsp";

        if (id.equals("green") && pw.equals("p1234")) {
            session.setAttribute("id", id);

            if (age >= 20) {
                dir = "success.jsp";
            }else{
                dir = "success2.jsp";
            }
        }

        return dir;
    }

}
