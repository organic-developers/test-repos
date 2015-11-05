package Logic;

import com.ghasemkiani.util.icu.PersianCalendar;

import java.util.Calendar;
import java.util.Date;

/**
 * Created by Saied on 10/26/2015.
 */
public class DateUtil {

    public String getTodayDate() {

        PersianCalendar persianCalendar = new PersianCalendar();
        String today = "" + persianCalendar.get(Calendar.YEAR);
        if (persianCalendar.get(Calendar.MONTH) + 1 <= 9) {
            today += "/0" + (persianCalendar.get(Calendar.MONTH) + 1);
        } else {
            today += "/" + (persianCalendar.get(Calendar.MONTH) + 1);
        }
        if (persianCalendar.get(Calendar.DAY_OF_MONTH) <= 9) {
            today += "/0" + persianCalendar.get(Calendar.DAY_OF_MONTH);
        } else {
            today += "/" + persianCalendar.get(Calendar.DAY_OF_MONTH);
        }
        return today;
    }

    public String getTodayDateDashed() {

        PersianCalendar persianCalendar = new PersianCalendar();
        String today = "" + persianCalendar.get(Calendar.YEAR);
        if (persianCalendar.get(Calendar.MONTH) + 1 <= 9) {
            today += "-0" + (persianCalendar.get(Calendar.MONTH) + 1);
        } else {
            today += "-" + (persianCalendar.get(Calendar.MONTH) + 1);
        }
        if (persianCalendar.get(Calendar.DAY_OF_MONTH) <= 9) {
            today += "-0" + persianCalendar.get(Calendar.DAY_OF_MONTH);
        } else {
            today += "-" + persianCalendar.get(Calendar.DAY_OF_MONTH);
        }
        return today;
    }

    public String getTodayYear() {
        PersianCalendar persianCalendar = new PersianCalendar();
        return "" + persianCalendar.get(Calendar.YEAR);
    }

    public String getTodayMonth() {
        PersianCalendar persianCalendar = new PersianCalendar();
        return "" + persianCalendar.get(Calendar.MONTH);
    }

    public String getTodayDay() {
        PersianCalendar persianCalendar = new PersianCalendar();
        return "" + persianCalendar.get(Calendar.DAY_OF_MONTH);
    }

    public String getTimeStamp() {
        PersianCalendar persianCalendar1 = new PersianCalendar(new Date());

        String timeStamp = persianCalendar1.get(Calendar.YEAR)
                + "-" + (persianCalendar1.get(Calendar.MONTH) + 1)
                + "-" + persianCalendar1.get(Calendar.DAY_OF_MONTH)
                + " " + persianCalendar1.get(Calendar.HOUR_OF_DAY)
                + ":" + persianCalendar1.get(Calendar.MINUTE)
                + ":" + persianCalendar1.get(Calendar.SECOND);
        return timeStamp;
    }
}
