package D20241104.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/rsp")
public class RspServlet extends HttpServlet {

    private static final int WINSCORE = 10;
    private static final int LOSESCORE = -5;
    private static final int DRAWSCORE = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        ServletContext ctx = getServletContext();

        int win = request.getParameter("w")==null?0:Integer.parseInt(request.getParameter("w"));
        int lose = request.getParameter("l")==null?0:Integer.parseInt(request.getParameter("l"));
        int draw = request.getParameter("s")==null?0:Integer.parseInt(request.getParameter("s"));

        int score = (win * WINSCORE) + (lose * LOSESCORE) + (draw * DRAWSCORE);
        String sess = (String) session.getAttribute("id");

        int nowScore = ctx.getAttribute("maxScore") == null ? 0 : (Integer)ctx.getAttribute("maxScore");
        if (nowScore < score) {
            ctx.setAttribute("maxScore", score);
            ctx.setAttribute("maxId", sess);
        }

    }
}