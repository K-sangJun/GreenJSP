package servlet.D20241029;

import servlet.D20241028.domain.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/reg")
public class RegServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

//        폼에서 id, pw, name 파라미터가 전달된다.
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String name = request.getParameter("name");

//        Memeber 객체에 파라미터를 담자.
        Member member = new Member();
        member.setId(id);
        member.setPw(pw);
        member.setName(name);

        request.setAttribute("member", member);

        request.getRequestDispatcher("/D20241029/member_result.jsp").forward(request, response);
    }
}