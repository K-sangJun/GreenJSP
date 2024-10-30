package D20241030.dto;

import lombok.Data;

import java.time.LocalDate;

@Data
public class Member {
    private int mno;
    private String name;
    private String phone;
    private String addr;
    private LocalDate birth;
}
