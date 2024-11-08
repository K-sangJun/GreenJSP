<%@ page import="D20241107.db.JdbcConnect" %>
<%@ page import="D20241107.db.DBconnPool" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-07
  Time: 오전 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h2>JDBC Test 1</h2>
        <hr>
        <%
            JdbcConnect jdbc1 = new JdbcConnect();
            jdbc1.close();
        %>
        <h2>JDBC Test 2</h2>
        <hr>

        <%
            String driver = application.getInitParameter("mariaDriver");
            String url = application.getInitParameter("mariaUrl");
            String id = application.getInitParameter("mariaId");
            String pw = application.getInitParameter("mariaPw");

            JdbcConnect jdbc2 = new JdbcConnect(driver, url, id, pw);
            jdbc2.close();
        %>

        <h2>JDBC Test 3</h2>
        <hr>

        <%
            JdbcConnect jdbc3 = new JdbcConnect(application);
            jdbc3.close();
        %>

        <h2>JDBC Test 4</h2>
        <hr>

        <%
            DBconnPool dBconnPool = new DBconnPool();

            String sql = "INSERT INTO board_test_tbl VALUES (null, ?, ?, ?)";
            dBconnPool.pstmt = dBconnPool.conn.prepareStatement(sql);
            dBconnPool.pstmt.setString(1, "test5");
            dBconnPool.pstmt.setString(2, "test content5");
            dBconnPool.pstmt.setString(3, "user05");

            int result = dBconnPool.pstmt.executeUpdate();
            out.println(result + "행이 입력되었습니다.");

            String sql2 = "SELECT * FROM board_test_tbl";
            dBconnPool.pstmt = dBconnPool.conn.prepareStatement(sql2);
            dBconnPool.pstmt.executeQuery();
            dBconnPool.rs = dBconnPool.pstmt.getResultSet();
            while (dBconnPool.rs.next()) {
                out.print("<br>");
                out.println(dBconnPool.rs.getInt("board_index"));
                out.println(dBconnPool.rs.getString("title"));
                out.println(dBconnPool.rs.getString("content"));
                out.println(dBconnPool.rs.getString("w_id"));
            }

//            String sql3 = """
//                        UPDATE board_test_tbl
//                        SET title = CONCAT(title, title),
//                            content = CONCAT(content, content),
//                            w_id = CONCAT(w_id, w_id);
//                    """;
//            dBconnPool.pstmt = dBconnPool.conn.prepareStatement(sql3);
//            result = dBconnPool.pstmt.executeUpdate();
//            out.println(result + "행이 입력되었습니다.");

            dBconnPool.close();
        %>

        <%--        <form action="/boardInsert" method="post">--%>
        <%--            <input type="submit" value="값 넣기~">--%>
        <%--        </form>--%>
    </body>
</html>
