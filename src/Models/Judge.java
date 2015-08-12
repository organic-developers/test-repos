package Models;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by Saied on 8/12/2015.
 */
@Entity
public class Judge {
    private int id;
    private String fName;
    private String lName;
    private String fieldOfStudy;
    private String grade;


    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    @Basic
    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }


    @Basic
    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }


    @Basic
    public String getFieldOfStudy() {
        return fieldOfStudy;
    }

    public void setFieldOfStudy(String fieldOfStudy) {
        this.fieldOfStudy = fieldOfStudy;
    }


    @Basic
    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) return false;
        if (!this.getClass().equals(obj.getClass())) return false;

        Judge obj2 = (Judge) obj;
        if ((this.id == obj2.getId()) && (this.fName.equals(obj2.getfName()))
                && (this.lName.equals(obj2.getlName()))
                && (this.fieldOfStudy.equals(obj2.getFieldOfStudy()))
                && (this.grade.equals(obj2.getGrade()))) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        int tmp = 0;
        tmp = (id + fName + lName + fieldOfStudy + grade).hashCode();
        return tmp;
    }
}
