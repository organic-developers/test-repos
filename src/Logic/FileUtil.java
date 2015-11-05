package Logic;

import java.io.File;

/**
 * Created by Saied on 10/27/2015.
 */
public class FileUtil {

    public String makeAbsoluteDirectory(){
        String today = new DateUtil().getTodayDateDashed();

        String directory = Address.PLANS_AB + today + "\\";
        File theDir = new File(directory);// if the directory does not exist, create it

        if (!theDir.exists()) {
//            System.out.println("creating directory: " + directoryName);
            boolean result = false;

            try {
                theDir.mkdir();
                result = true;
            } catch (SecurityException se) {
                //handle it
            }
            if (result) {
                System.out.println("DIR created");
            }
        }
        return directory;
    }

    public String makeRelativeDirectory(){
        String today = new DateUtil().getTodayDateDashed();

        String directory = Address.PLANS_RE + today + "\\";
        File theDir = new File(directory);// if the directory does not exist, create it

        if (!theDir.exists()) {
//            System.out.println("creating directory: " + directoryName);
            boolean result = false;

            try {
                theDir.mkdir();
                result = true;
            } catch (SecurityException se) {
                //handle it
            }
            if (result) {
                System.out.println("DIR created");
            }
        }
        return directory;
    }

    public String getTodayAddress(){
        String today = new DateUtil().getTodayDateDashed();

        String directory = today + "\\";
        File theDir = new File(directory);// if the directory does not exist, create it

        if (!theDir.exists()) {
//            System.out.println("creating directory: " + directoryName);
            boolean result = false;

            try {
                theDir.mkdir();
                result = true;
            } catch (SecurityException se) {
                //handle it
            }
            if (result) {
                System.out.println("DIR created");
            }
        }
        return directory;
    }

}
