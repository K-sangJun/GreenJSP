package D20241101.dao;

import D20241101.db.DBConn;
import D20241101.dto.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDao {

    Connection conn = DBConn.getInstance().getConnection();

    public ArrayList<Product> getProducts() {
        ArrayList<Product> products = new ArrayList<>();

        try {
            String qry = "SELECT PCODE, PNAME, COST FROM tbl_product_202101";

            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.executeQuery();
            ResultSet rs = pstmt.getResultSet();
            while (rs.next()) {
                Product product = new Product();
                product.setCOST(rs.getInt("COST"));
                product.setPCODE(rs.getString("PCODE"));
                product.setPNAME(rs.getString("PNAME"));
                products.add(product);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return products;
    }

    public ArrayList<Product> getProductSales() {
        ArrayList<Product> products = new ArrayList<>();

        try {
            String qry = """
                    SELECT PCODE,
                    		 PNAME,
                    		 COST,
                    		 COST * 0.9 AS tenCost,
                    		 COST * 0.85 AS fifteenCost
                    FROM tbl_product_202101;
                    """;

            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.executeQuery();
            ResultSet rs = pstmt.getResultSet();
            while (rs.next()) {
                Product product = new Product();
                product.setCOST(rs.getInt("COST"));
                product.setPCODE(rs.getString("PCODE"));
                product.setPNAME(rs.getString("PNAME"));
                product.setTenCost(rs.getInt("tenCost"));
                product.setFifteenCost(rs.getInt("fifteenCost"));
                products.add(product);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return products;
    }

}
