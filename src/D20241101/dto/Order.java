package D20241101.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order {
    String ORDERNO;
    String SHOPNO;
    String ORDERDATE;
    String PCODE;
    int AMOUNT;
}
