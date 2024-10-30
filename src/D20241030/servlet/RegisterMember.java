package D20241030.servlet;

import D20241030.dao.MemberDao;
import D20241030.dto.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.time.LocalDate;
import javax.servlet.annotation.WebServlet;

@WebServlet("/registerMember")
public class RegisterMember extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");

        MemberDao dao = new MemberDao();
        Member member = new Member();

        member.setName(request.getParameter("name"));
        member.setPhone(request.getParameter("phone"));
        member.setAddr(request.getParameter("addr"));
        member.setBirth(LocalDate.parse(request.getParameter("birth")));

        dao.regMember(member);
        response.sendRedirect("getMemberList");
    }
}