package D20241101.servlet;

import D20241101.dao.OrderDao;
import D20241101.dto.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import javax.servlet.annotation.WebServlet;

@WebServlet("/registerOrder")
public class RegisterOrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        Order order = new Order();
        OrderDao orderDao = new OrderDao();

        String formattedDate = LocalDate.parse(request.getParameter("ORDERDATE"), DateTimeFormatter.ofPattern("yyyy-MM-dd"))
                .format(DateTimeFormatter.ofPattern("yyyyMMdd"));

        order.setSHOPNO(request.getParameter("SHOPNO"));
        order.setORDERNO(request.getParameter("ORDERNO"));
        order.setORDERDATE(formattedDate);
        order.setAMOUNT(Integer.parseInt(request.getParameter("AMOUNT")));
        order.setPCODE(request.getParameter("PCODE"));

        int result = orderDao.registerOrder(order);

        PrintWriter out = response.getWriter();
        out.println(result);
        out.close();
    }
}