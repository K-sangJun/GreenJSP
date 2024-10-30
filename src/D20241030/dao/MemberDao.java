package D20241030.dao;

import D20241030.db.DBConn;
import D20241030.dto.Member;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MemberDao implements IMemberDao {

    Connection conn = DBConn.getInstance().getConnection();

    @Override
    public void regMember(Member member) {

        String sql = """
                    INSERT INTO member(
                        name, 
                        phone, 
                        addr, 
                        birth
                    )VALUES (
                        ?, 
                        ?, 
                        ?, 
                        ?
                    );
                """;
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, member.getName());
            pstmt.setString(2, member.getPhone());
            pstmt.setString(3, member.getAddr());
            pstmt.setDate(4, Date.valueOf(member.getBirth()));
            pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public Member getMember(int mno) {

        Member member = new Member();

        try {
            String sql = """
                       SELECT mno, 
                              name, 
                              phone, 
                              addr, 
                              birth
                       FROM member
                       WHERE mno = ?
                    """;

            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, mno);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                member.setMno(rs.getInt(1));
                member.setName(rs.getString(2));
                member.setPhone(rs.getString(3));
                member.setAddr(rs.getString(4));
                member.setBirth(rs.getDate(5).toLocalDate());
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return member;
    }

    @Override
    public List<Member> getMembers() {

        List<Member> members = new ArrayList<Member>();

        try {
            String sql = """
                       SELECT mno, 
                              name, 
                              phone, 
                              addr, 
                              birth
                       FROM member
                    """;

            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Member member = new Member();
                member.setMno(rs.getInt(1));
                member.setName(rs.getString(2));
                member.setPhone(rs.getString(3));
                member.setAddr(rs.getString(4));
                member.setBirth(rs.getDate(5).toLocalDate());
                members.add(member);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return members;
    }

    @Override
    public void modifyMember(Member member) {

        try {
            String sql = """
                       UPDATE member
                       	SET name=?,
                       		phone=?,
                       		addr=?,
                       		birth=?
                       	WHERE mno=?
                    """;

            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, member.getName());
            pstmt.setString(2, member.getPhone());
            pstmt.setString(3, member.getAddr());
            pstmt.setDate(4, Date.valueOf(member.getBirth()));
            pstmt.setInt(5, member.getMno());
            pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public void delMember(int mno) {

        try {
            String sql = """
                   DELETE FROM member 
                   WHERE mno = ?
                """;

            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, mno);
            pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
