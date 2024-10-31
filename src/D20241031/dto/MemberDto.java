package D20241031.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberDto {
    private int custno;
    private String custname;
    private String phone;
    private String address;
    private Date joindate;
    private String grade;
    private String city;
}
