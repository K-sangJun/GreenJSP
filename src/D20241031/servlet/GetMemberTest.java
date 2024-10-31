package D20241031.servlet;

import D20241031.dao.MemberDao;
import D20241031.dto.MemberDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/getMemberTest")
public class GetMemberTest extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int custno = Integer.parseInt(request.getParameter("custno"));
        MemberDao dao = new MemberDao();
        MemberDto member = dao.select(custno);
        request.setAttribute("member", member);
        request.getRequestDispatcher("/D20241031/editMemberTest.jsp").forward(request, response);
    }

//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
}