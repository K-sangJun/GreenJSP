package D20241104.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/cookieLogin")
public class CookieLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        String pw = request.getParameter("pw");


        Cookie deleteCookie = new Cookie("id", id);
        deleteCookie.setPath(request.getPathInfo()); // 동일한 경로 설정
        deleteCookie.setMaxAge(60 * 60); // 유효기간 0으로 설정
        response.addCookie(deleteCookie); // 쿠키 삭제

        if (id.equals("test") && pw.equals("test")) {
            Cookie cookie = new Cookie("idChk", id);
            cookie.setPath(request.getPathInfo());
            cookie.setMaxAge(60 * 60);
            response.addCookie(cookie);
        }

        response.sendRedirect("/D20241104/cookieResult.jsp");
    }
}