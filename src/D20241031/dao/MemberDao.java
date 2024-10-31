package D20241031.dao;

import D20241031.db.DBConn;
import D20241031.dto.MemberDto;
import D20241031.dto.SalesDto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDao {

    Connection conn = DBConn.getInstance().getConnection();

    public int register(MemberDto member) {

        try {
            String qry = """
                    INSERT INTO member_tbl_02(
                        custname, 
                        phone, 
                        address, 
                        joindate, 
                        grade, 
                        city
                    )VALUES (
                        ?, 
                        ?, 
                        ?, 
                        ?, 
                        ?, 
                        ?
                    );
                    """;

            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.setString(1, member.getCustname());
            pstmt.setString(2, member.getPhone());
            pstmt.setString(3, member.getAddress());
            pstmt.setDate(4, member.getJoindate());
            pstmt.setString(5, member.getGrade());
            pstmt.setString(6, member.getCity());

            return pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public int maxCustNo() {
        int maxCustNo = 0;
        try {
            String qry = """
                    SELECT MAX(custno) +1 AS custno
                    FROM member_tbl_02
                    """;

            PreparedStatement pstmt = conn.prepareStatement(qry);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                maxCustNo = rs.getInt("custno");
            }
            return maxCustNo;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public ArrayList<MemberDto> selectAll() {

        ArrayList<MemberDto> members = new ArrayList<>();
        try {
            String qry = """
                        SELECT custno,
                               custname,
                               phone,
                               address,
                               joindate,
                               CASE
                                   WHEN grade = 'A' THEN 'VIP'
                                   WHEN grade = 'B' THEN '일반'
                                   ELSE '직원'
                               END AS grade,
                               city
                        FROM member_tbl_02;
                    """;
            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.executeQuery();
            ResultSet rs = pstmt.getResultSet();
            while (rs.next()) {
                MemberDto member = new MemberDto();
                member.setCustno(rs.getInt(1));
                member.setCustname(rs.getString(2));
                member.setPhone(rs.getString(3));
                member.setAddress(rs.getString(4));
                member.setJoindate(rs.getDate(5));
                member.setGrade(rs.getString(6));
                member.setCity(rs.getString(7));
                members.add(member);
            }

            return members;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public MemberDto select(int custno) {

        MemberDto member = new MemberDto();
        try {
            String qry = """
                        SELECT custno,
                               custname,
                               phone,
                               address,
                               joindate,
                               grade,
                               city
                    	FROM member_tbl_02
                        WHERE custno = ?
                    """;
            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.setInt(1, custno);
            pstmt.executeQuery();
            ResultSet rs = pstmt.getResultSet();
            while (rs.next()) {
                member.setCustno(rs.getInt(1));
                member.setCustname(rs.getString(2));
                member.setPhone(rs.getString(3));
                member.setAddress(rs.getString(4));
                member.setJoindate(rs.getDate(5));
                member.setGrade(rs.getString(6));
                member.setCity(rs.getString(7));
            }

            return member;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public int edit(MemberDto member) {

        try {
            String qry = """
                        UPDATE member_tbl_02
                      	SET custname=?,
                      		phone=?,
                      		address=?,
                      		joindate=?,
                      		grade=?,
                      		city=?
                      	WHERE custno=?
                    """;

            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.setString(1, member.getCustname());
            pstmt.setString(2, member.getPhone());
            pstmt.setString(3, member.getAddress());
            pstmt.setDate(4, member.getJoindate());
            pstmt.setString(5, member.getGrade());
            pstmt.setString(6, member.getCity());
            pstmt.setInt(7, member.getCustno());

            return pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public ArrayList<SalesDto> sales() {
        ArrayList<SalesDto> sales = new ArrayList<>();

        try {

            String qry = """
                    SELECT a.custno,
                    		 b.custname,
                    		 CASE
                               WHEN b.grade = 'A' THEN 'VIP'
                               WHEN b.grade = 'B' THEN '일반'
                               ELSE '직원'
                           END AS grade,
                    		 SUM((a.price - a.pcost) * a.amount) AS sales
                    FROM money_tbl_02 a
                    LEFT JOIN member_tbl_02 b ON a.custno = b.custno
                    GROUP BY custno
                    ORDER BY sales DESC;
                    """;

            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.executeQuery();
            ResultSet rs = pstmt.getResultSet();
            while (rs.next()) {
                SalesDto sale = new SalesDto();
                sale.setCustno(rs.getInt(1));
                sale.setCustname(rs.getString(2));
                sale.setGrade(rs.getString(3));
                sale.setSales(rs.getInt(4));
                sales.add(sale);
            }

            return sales;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public int checkPhone(String phone) {
        System.out.println(phone);
        int count = 0;
        try {
            String qry = """
                    SELECT COUNT(*) as cnt FROM member_tbl_02 WHERE phone = ?;
                    """;

            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.setString(1, phone);
            pstmt.executeQuery();
            ResultSet rs = pstmt.getResultSet();
            while (rs.next()) {
                System.out.println(rs.getInt("cnt"));
                return rs.getInt(1);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return count;
    }
}
