package D20241104.servlet;

import D20241104.dao.RspDao;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.annotation.WebServlet;

@WebServlet("/rspLogin")
public class RspLoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        RspDao rspDao = new RspDao();
        String id = request.getParameter("id");
        String type = request.getParameter("type");
        int result = rspDao.doLogin(id);

        if (type.equals("login")){
            HttpSession session = request.getSession();
            session.setAttribute("id", id);
            if (result <= 0){
                rspDao.insertId(id);
            }
        }

        out.println(result);
    }
}