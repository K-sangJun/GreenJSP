package D20241030.servlet;

import D20241030.dao.MemberDao;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/deleteMember")
public class DeleteMember extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberDao dao = new MemberDao();
        int mno = Integer.parseInt(request.getParameter("mno"));

        dao.delMember(mno);
        response.sendRedirect("getMemberList");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}