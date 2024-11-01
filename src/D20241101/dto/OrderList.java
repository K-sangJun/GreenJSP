package D20241101.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderList {
    private String SHOPNO;
    private String SHOPNAME;
    private String ORDERNO;
    private String ORDERDATE;
    private String PCODE;
    private String PNAME;
    private int AMOUNT;
    private int COST;
    private int consumerPrice;
    private int discountPrice;

}
