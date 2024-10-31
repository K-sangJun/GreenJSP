package D20241031.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SalesDto {
    private int custno;
    private String custname;
    private String grade;
    private int sales;
}
