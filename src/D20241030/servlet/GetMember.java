package D20241030.servlet;

import D20241030.dao.MemberDao;
import D20241030.dto.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/getMember")
public class GetMember extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        MemberDao dao = new MemberDao();
        int mno = Integer.parseInt(request.getParameter("mno"));

        Member member = dao.getMember(mno);
        request.setAttribute("member", member);
        request.getRequestDispatcher("/D20241030/member/modifyMember.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}