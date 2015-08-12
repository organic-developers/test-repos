package Models;

/**
 * Created by Saied on 8/9/2015.
 */
public class Personnel {
    private int id;
    private String fName;
    private String lName;
    private String phone;

    public Personnel() {
    }
    public Personnel(String fName, String lName, String phone) {
        this.fName = fName;
        this.lName = lName;
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

        Personnel obj2 = (Personnel) obj;
        if ((this.id == obj2.getId()) && (this.fName.equals(obj2.getfName()))
                && (this.lName.equals(obj2.getlName())) && (this.phone.equals(obj2.getPhone()))) {
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
