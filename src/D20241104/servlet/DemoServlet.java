package D20241104.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import javax.servlet.annotation.WebServlet;

@WebServlet("/demo")
public class DemoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        ServletContext ctx = request.getServletContext();
        ctx.setAttribute("y", "yyyy");

        String id = request.getParameter("id");
        out.print(id.equals("aaa") ? "사용중인 아이디 입니다." : "쓸수이따.");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}