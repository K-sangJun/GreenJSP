package D20241107.db;

import javax.servlet.ServletContext;
import java.sql.*;

public class JdbcConnect {

    public Connection conn;
    public Statement stmt;
    public PreparedStatement pstmt;
    public ResultSet rs;

    public JdbcConnect() {
        try {
            Class.forName("org.mariadb.jdbc.Driver");

            String url = "jdbc:mariadb://localhost:3306/jsp";
            String id = "root";
            String pw = "1234";

            conn = DriverManager.getConnection(url, id, pw);

            if (conn != null) {
                System.out.println("Connected");
            }

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public JdbcConnect(String driver, String url, String id, String pw) {

        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, id, pw);
            if (conn != null) {
                System.out.println("Connected");
            }
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public JdbcConnect(ServletContext application) {
        try {
            Class.forName(
                    application.getInitParameter("mariaDriver")
            );

            conn = DriverManager.getConnection(
                    application.getInitParameter("mariaUrl"),
                    application.getInitParameter("mariaId"),
                    application.getInitParameter("mariaPw")
            );

            if (conn != null) {
                System.out.println("Connected");
            }

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    //연결 해~ 제~
    public void close() {

        try {
            if (rs != null) {
                System.out.println("Closing ResultSet");
                rs.close();
            }
            if (stmt != null) {
                System.out.println("Closing Statement");
                stmt.close();
            }
            if (pstmt != null) {
                System.out.println("Closing PreparedStatement");
                pstmt.close();
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
