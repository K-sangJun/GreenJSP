package servlet.D20241028;

import servlet.D20241028.domain.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    ArrayList<Member> members = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        Member member = new Member();
        request.getParameterMap().keySet().forEach(key -> {
            String value = request.getParameter(key);
            switch (key) {
                case "name":
                    member.setName(value);
                    break;
                case "id":
                    member.setId(value);
                    break;
                case "pw":
                    member.setPw(value);
                    break;
            }
        });
        request.setAttribute("member", member);
        members.add(member);

        request.setAttribute("members", members);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}