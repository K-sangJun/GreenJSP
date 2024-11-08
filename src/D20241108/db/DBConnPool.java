package D20241108.db;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;

public class DBConnPool {
    public Connection conn;
    public Statement stmt;
    public PreparedStatement pstmt;
    public ResultSet rs;

    public DBConnPool() {
        try {
            Context initCtx = new InitialContext();
            Context ctx = (Context) initCtx.lookup("java:comp/env");
            DataSource source = (DataSource) ctx.lookup("dbcp_maria");

            conn = source.getConnection();

            System.out.println("DB 커넥션 풀 연결 성공");
        } catch (Exception e) {
            System.out.println("DB 커넥션 풀 연결 실패..");
            e.printStackTrace();
        }
    }

    //연결 해~ 제~
    public void close() {

        try {
            if (rs != null) {
                System.out.println("Closing ResultSet");
                rs.close();
            }
            if (pstmt != null) {
                System.out.println("Closing PreparedStatement");
                pstmt.close();
            }
            if (stmt != null) {
                System.out.println("Closing Statement");
                stmt.close();
            }
            if (conn != null) {
                System.out.println("Closed Connection");
                conn.close();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        System.out.println("자원해제");
    }
}
