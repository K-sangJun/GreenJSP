package D20241106.servlet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/doLogin")
public class DoLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        if (id.equals("aaa") && pw.equals("1234")) {
            HttpSession session = request.getSession();
            session.setAttribute("id", id);
            response.sendRedirect("/D20241106/sucLogin.jsp");
        }else{
            response.sendRedirect("/D20241106/login.jsp");
        }

    }
}