package D20241028;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        int age = Integer.parseInt(request.getParameter("age"));

        String dir = Login.loginCheck(id, pw, age, session);

        response.sendRedirect(dir);
    }


}