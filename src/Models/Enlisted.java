package Models;

/**
 * Created by Saied on 8/9/2015.
 */
public class Enlisted {
    private int id;
    private String fName;
    private String lName;
    private int studentID;
    private String email;
    private String phone;

    public Enlisted() {
    }
    public Enlisted(String fName, String lName, int studentID, String email, String phone) {
        this.fName = fName;
        this.lName = lName;
        this.studentID = studentID;
        this.email = email;
        this.phone = phone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public int getStudentID() {
        return studentID;
    }

    public void setStudentID(int studentID) {
        this.studentID = studentID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) return false;
        if (!this.getClass().equals(obj.getClass())) return false;

        Enlisted obj2 = (Enlisted) obj;
        if ((this.id == obj2.getId()) && (this.fName.equals(obj2.getfName()))
                && (this.lName.equals(obj2.getlName())) && (this.studentID == obj2.getStudentID())
                && (this.email == obj2.getEmail()) && (this.phone.equals(obj2.getPhone()))) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        int tmp = 0;
        tmp = (id + fName + lName + phone).hashCode();
        return tmp;
    }
}
