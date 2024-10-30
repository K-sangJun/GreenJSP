package D20241024;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/test")
public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html; charset=utf-8");
        response.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        System.out.println(username);
        System.out.println("TestServlet Get 메소드 실행............");

        PrintWriter out = response.getWriter();
//        out.println("<html>");
//        out.println("<head>");
//        out.println("<title>test</title>");
//        out.println("</head>");
//        out.println("<body>");
//        out.println("<h1>TestServlet 응답 화면</h1>");
//        out.println("<hr>");
//        out.println("<p>이렇게 까지 해야 됩니까?</p>");
//        out.println("</body>");
//        out.println("</html>");

        response.sendRedirect("/D20241024/fourth.jsp");
    }
}