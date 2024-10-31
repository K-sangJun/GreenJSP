package D20241031.servlet;

import D20241031.dao.MemberDao;
import D20241031.dto.MemberDto;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.annotation.WebServlet;

@WebServlet("/getAllMemberTest")
public class GetAllMemberTest extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberDao dao = new MemberDao();
        ArrayList<MemberDto> members = dao.selectAll();
        request.setAttribute("members", members);
        request.getRequestDispatcher("/D20241031/selectMemberTest.jsp").forward(request, response);
    }

//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
}