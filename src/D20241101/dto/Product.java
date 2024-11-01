package D20241101.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {
    private String PCODE;
    private String PNAME;
    private int COST;
    private int tenCost;
    private int fifteenCost;
}
