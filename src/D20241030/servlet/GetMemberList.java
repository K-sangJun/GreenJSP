package D20241030.servlet;
import D20241030.dao.MemberDao;
import D20241030.dto.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;
import javax.servlet.annotation.WebServlet;

@WebServlet("/getMemberList")
public class GetMemberList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberDao dao = new MemberDao();
        List<Member> members = dao.getMembers();

        request.setAttribute("members", members);
        request.getRequestDispatcher("/D20241030/member/memberList.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}