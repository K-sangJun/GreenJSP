package servlet.D20241024;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/fifth")
public class fifthServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("fifthServlet doGet");

        request.getRequestDispatcher("/D20241024/fifth.jsp").forward(request, response);
    }
}