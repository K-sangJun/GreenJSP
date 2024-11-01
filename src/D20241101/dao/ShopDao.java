package D20241101.dao;

import D20241101.db.DBConn;
import D20241101.dto.Shop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ShopDao {

    Connection conn = DBConn.getInstance().getConnection();

    public ArrayList<Shop> getShops() {
        ArrayList<Shop> shops = new ArrayList<>();

        try {
            String qry = "SELECT SHOPNO, SHOPNAME, DISCOUNT FROM tbl_shop_202101";

            PreparedStatement ps = conn.prepareStatement(qry);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Shop shop = new Shop();
                shop.setDISCOUNT(rs.getInt("discount"));
                shop.setSHOPNAME(rs.getString("SHOPNAME"));
                shop.setSHOPNO(rs.getString("SHOPNO"));
                shops.add(shop);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return shops;
    }
}
