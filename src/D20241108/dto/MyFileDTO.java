package D20241108.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MyFileDTO {

    private int idx;
    private String name;
    private String title;
    private String cate;
    private String ofile;
    private String sfile;
    private Date postdate;

}
