package Models;

public class Enlisted {
    private int id;
    private String fName;
    private String lName;
    private String studentId;
    private String email;
    private String phone;

    public Enlisted() {
    }
    public Enlisted(String fName, String lName, String studentId, String email, String phone) {
        this.fName = fName;
        this.lName = lName;
        this.studentId = studentId;
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

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
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
                && (this.lName.equals(obj2.getlName())) && (this.studentId.equals(obj2.getStudentId()))
                && (this.email.equals(obj2.getEmail())) && (this.phone.equals(obj2.getPhone()))) {
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
