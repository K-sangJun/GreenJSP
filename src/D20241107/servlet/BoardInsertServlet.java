package D20241107.servlet;

import D20241107.db.DBconnPool;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/boardInsert")
public class BoardInsertServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");


        DBconnPool dBconnPool = new DBconnPool();
        PrintWriter out = response.getWriter();

        String sql = "INSERT INTO board_test_tbl VALUES (null, ?, ?, ?)";
        try {
            dBconnPool.pstmt = dBconnPool.conn.prepareStatement(sql);
            PreparedStatement pstmt = dBconnPool.pstmt;

            pstmt.setString(1, "test5");
            pstmt.setString(2, "test content5");
            pstmt.setString(3, "user05");

            int result = pstmt.executeUpdate();
            out.println(result + "행이 입력되었습니다.");

            dBconnPool.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}