package D20241025;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Arrays;
import javax.servlet.annotation.WebServlet;

@WebServlet("/life")
public class LifeCycleServlet extends HttpServlet {


    public LifeCycleServlet() {
        super();
    }

    public void init() throws ServletException {
        System.out.println("init......................");
    }

    public void destroy() {
        System.out.println("destroy.....................");
    }

//    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("service......................");
//    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=utf-8");
        response.setCharacterEncoding("UTF-8");
        System.out.println("doGet......................");

//        form에서 Get방식으로 입력데이터를 파라미터로 서블릿에 보내준다.
//        파라미터를 서블릿에서 받으려면...
//        요청을 처리하는 갹체 (HttpServletRequest) 참조변수 (request)를 사용한다.
//        요청 객체의 파라미터 처리 전용 메소드(getParameter("파라미터이름"))
//        getParameter("파라미터이름") 메소드의 반환타입은 String이다.
//        만약 파라미터를 숫자 자료형으로 반환하려면...
//        Wrapper Class(래퍼클래스)의 parse 메소드를 사용한다. (parseInt(), ParseDouble())

        String name = request.getParameter("userName");

        System.out.println("userName: " + name);

//        PrintWriter out = response.getWriter();
//        out.println("<html>");
//        out.println("<head>");
//        out.println("<title>Servlet LifeCycleServlet</title>");
//        out.println("</head>");
//        out.println("<body>");
//        out.println("<h1>Servlet LifeCycleServlet at " + name + "</h1>");
//        out.println("</body>");
//        out.println("</html>");
        response.sendRedirect("/D20241025/lifeResponse.jsp?userName=" + URLEncoder.encode(name, "UTF-8"));
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=utf-8");
        System.out.println("doPost.....................");

        String name = request.getParameter("userName");
        String gender = request.getParameter("gender");
        String[] hobbies = request.getParameterValues("hobbies");
        String[] jobs = request.getParameterValues("jobs");
        System.out.println("userName: " + name);
        System.out.println("gender: " + gender);
        System.out.println("hobbies: " + Arrays.toString(hobbies));
        System.out.println("jobs: " + Arrays.toString(jobs));
        String url = "/D20241025/lifeResponse.jsp";
        url += "?userName=" + URLEncoder.encode(name, "UTF-8");
        url += "&gender=" + URLEncoder.encode(gender, "UTF-8");
        for (int i = 0; i < hobbies.length; i++) {
            url += "&hobbies=" + URLEncoder.encode(hobbies[i], "UTF-8");
        }
        for (int i = 0; i < jobs.length; i++) {
            url += "&jobs=" + URLEncoder.encode(jobs[i], "UTF-8");
        }
        response.sendRedirect(url);
    }

}