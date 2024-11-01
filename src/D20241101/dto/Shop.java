package D20241101.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Shop {
    private String SHOPNO;
    private String SHOPNAME;
    private int DISCOUNT;
}
