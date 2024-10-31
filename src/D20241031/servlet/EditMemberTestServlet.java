package D20241031.servlet;

import D20241031.dao.MemberDao;
import D20241031.dto.MemberDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

@WebServlet("/editMemberTestServlet")
public class EditMemberTestServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        MemberDto member = new MemberDto();
        MemberDao dao = new MemberDao();

        member.setCustno(Integer.parseInt(request.getParameter("custno")));
        member.setPhone(request.getParameter("phone"));
        member.setCity(request.getParameter("city"));
        member.setAddress(request.getParameter("address"));
        member.setCustname(request.getParameter("custname"));
        member.setJoindate(Date.valueOf(request.getParameter("joindate")));
        member.setGrade(request.getParameter("grade"));

        PrintWriter writer = response.getWriter();

        int result = dao.edit(member);
        if (result >= 1) {
            writer.println("<script>alert('수정하였습니다.'); location.href='getAllMemberTest'</script>");
            writer.close();
        }else{
            writer.println("<script>alert('실패하였습니다.'); location.href='getAllMemberTest'</script>");
            writer.close();
        }

    }
}