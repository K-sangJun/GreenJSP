package D20241101.dao;

import D20241101.db.DBConn;
import D20241101.dto.Order;
import D20241101.dto.OrderList;
import D20241101.dto.OrderListShop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class OrderDao {

    Connection conn = DBConn.getInstance().getConnection();

    public int getMaxOrderNo() {

        int orderNo = 0;

        try {
            String qry = """
                        SELECT IFNULL(MAX(ORDERNO), CONCAT(YEAR(NOW()), '0000')) + 1 AS ORDERNO
                        FROM tbl_order_202101
                        WHERE ORDERNO LIKE CONCAT(YEAR(NOW()) , '%');
                    """;

            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.executeQuery();
            ResultSet rs = pstmt.getResultSet();
            while (rs.next()) {
                orderNo = rs.getInt(1);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return orderNo;
    }

    public int registerOrder(Order order) {

        try {
            String qry = """
                        INSERT INTO tbl_order_202101 (
                                  ORDERNO,
                                  SHOPNO,
                                  ORDERDATE,
                                  PCODE,
                                  AMOUNT
                        )SELECT IFNULL(MAX(ORDERNO), CONCAT(YEAR(NOW()), '0000')) + 1 AS ORDERNO,
                                ?,
                                ?,
                                ?,
                                ?
                         FROM tbl_order_202101
                         WHERE ORDERNO LIKE CONCAT(YEAR(NOW()), '%');
                    """;

            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.setString(1, order.getSHOPNO());
            pstmt.setString(2, order.getORDERDATE());
            pstmt.setString(3, order.getPCODE());
            pstmt.setDouble(4, order.getAMOUNT());
            return pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public ArrayList<OrderList> getOrderList(){
        ArrayList<OrderList> orderLists = new ArrayList<>();

        try {
            String qry = """
                        SELECT concat(substr(a.ORDERNO,1,4),'-',substr(a.ORDERNO,5,6)) AS ORDERNO,
                               a.SHOPNO,
                               c.SHOPNAME,
                               DATE_FORMAT(a.ORDERDATE, '%Y-%m-%d') AS ORDERDATE,
                               a.PCODE,
                               b.PNAME,
                               a.AMOUNT,
                               b.COST,
                               b.COST * a.AMOUNT AS consumerPrice,
                               (b.COST * a.AMOUNT) * (1 - c.DISCOUNT / 100) AS discountPrice
                        FROM tbl_order_202101 a
                        LEFT JOIN tbl_product_202101 b ON a.PCODE = b.PCODE
                        LEFT JOIN tbl_shop_202101 c ON a.SHOPNO = c.SHOPNO
                        #ORDER BY a.ORDERNO;
                    """;

            PreparedStatement pstmt = conn.prepareStatement(qry);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                OrderList orderList = new OrderList();
                orderList.setORDERNO(rs.getString(1));
                orderList.setSHOPNO(rs.getString(2));
                orderList.setSHOPNAME(rs.getString(3));
                orderList.setORDERDATE(rs.getString(4));
                orderList.setPCODE(rs.getString(5));
                orderList.setPNAME(rs.getString(6));
                orderList.setAMOUNT(rs.getInt(7));
                orderList.setCOST(rs.getInt(8));
                orderList.setConsumerPrice(rs.getInt(9));
                orderList.setDiscountPrice(rs.getInt(10));
                orderLists.add(orderList);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return orderLists;
    }

    public ArrayList<OrderListShop> getOrderListShop(){
        ArrayList<OrderListShop> orderListShops = new ArrayList<>();

        try {
            String qry = """
                        SELECT a.SHOPNO,
                               a.PCODE,
                               b.PNAME,
                               SUM(a.AMOUNT)
                        FROM tbl_order_202101 a
                        LEFT JOIN tbl_product_202101 b ON a.PCODE = b.PCODE
                        GROUP BY a.SHOPNO, a.PCODE
                        ORDER BY a.SHOPNO, a.PCODE;
                    """;

            PreparedStatement pstmt = conn.prepareStatement(qry);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                OrderListShop orderListShop = new OrderListShop();
                orderListShop.setSHOPNO(rs.getString(1));
                orderListShop.setPCODE(rs.getString(2));
                orderListShop.setPNAME(rs.getString(3));
                orderListShop.setAMOUNT(rs.getInt(4));
                orderListShops.add(orderListShop);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return orderListShops;
    }
}
