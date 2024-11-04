package D20241104.dao;

import D20241104.db.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RspDao {

    Connection conn = DBConn.getInstance().getConnection();

    public int doLogin(String id){

        int result = 0;

        try {
            String sql = """
                SELECT COUNT(*) FROM user WHERE id = ?;
                """;
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                result = rs.getInt(1);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return result;
    }

    public void insertId(String id){

        try {
            String sql = """
                INSERT INTO user(id) VALUES (?);
                """;
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

}
