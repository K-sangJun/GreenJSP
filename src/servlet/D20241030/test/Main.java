package servlet.D20241030.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;

public class Main {
    public static void main(String[] args) throws ParseException {
//        LocalDateTime -> String
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String sDate = now.format(dtf);
        System.out.println(sDate);

//        String -> Date
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = sdf.parse(sDate);
        System.out.println(date);

//        Calender -> Date
        Calendar calendar = Calendar.getInstance();
        Date date2 = calendar.getTime();
        System.out.println(date2);
    }
}
