package D20241031.servlet;

import D20241031.dao.MemberDao;
import D20241031.dto.MemberDto;
import D20241031.dto.SalesDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/salesMemberTest")
public class SalesMemberTest extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberDao dao = new MemberDao();
        ArrayList<SalesDto> sales = dao.sales();
        request.setAttribute("sales", sales);
        request.getRequestDispatcher("/D20241031/salesMemberTest.jsp").forward(request, response);
    }

//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
}