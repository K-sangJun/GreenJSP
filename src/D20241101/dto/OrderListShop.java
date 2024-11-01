package D20241101.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderListShop {
    private String SHOPNO;
    private String PCODE;
    private String PNAME;
    private int AMOUNT;

}
