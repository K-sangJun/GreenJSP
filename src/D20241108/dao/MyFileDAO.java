package D20241108.dao;

import D20241108.db.DBConnPool;
import D20241108.dto.MyFileDTO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class MyFileDAO extends DBConnPool {

    public int insertFile(MyFileDTO myFileDTO) {
        int applyResult = 0;

        try {

            String qry = "INSERT INTO myfile (name, title, cate, ofile, sfile) VALUES(?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(qry);
            pstmt.setString(1, myFileDTO.getName());
            pstmt.setString(2, myFileDTO.getTitle());
            pstmt.setString(3, myFileDTO.getCate());
            pstmt.setString(4, myFileDTO.getOfile());
            pstmt.setString(5, myFileDTO.getSfile());

            applyResult = pstmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("INSERT 중 오류가 발생하였습니다.");
            e.printStackTrace();
        }

        return applyResult;
    }

    public List<MyFileDTO> selectAll() {
        List<MyFileDTO> myFileDTOList = new Vector<>();

        try {
            String qry = "SELECT * FROM myfile ORDER BY idx DESC";
            pstmt = conn.prepareStatement(qry);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                MyFileDTO myFileDTO = new MyFileDTO();
                myFileDTO.setIdx(rs.getInt("idx"));
                myFileDTO.setCate(rs.getString("cate"));
                myFileDTO.setName(rs.getString("name"));
                myFileDTO.setTitle(rs.getString("title"));
                myFileDTO.setSfile(rs.getString("sfile"));
                myFileDTO.setOfile(rs.getString("ofile"));
                myFileDTO.setPostdate(rs.getDate("postdate"));
                myFileDTOList.add(myFileDTO);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return myFileDTOList;
    }

}
