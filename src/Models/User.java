package Models;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by Saied on 8/14/2015.
 */
@Entity
public class User {
    private int id;

    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String fName;

    @Basic
    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    private String lName;

    @Basic
    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    private String userName;

    @Basic
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    private String password;

    @Basic
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private int associationNumber;

    @Basic
    public int getAssociationNumber() {
        return associationNumber;
    }

    public void setAssociationNumber(int associationNumber) {
        this.associationNumber = associationNumber;
    }

    private String positionTitle;

    @Basic
    public String getPositionTitle() {
        return positionTitle;
    }

    public void setPositionTitle(String positionTitle) {
        this.positionTitle = positionTitle;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) return false;
        if (!this.getClass().equals(obj.getClass())) return false;

        User obj2 = (User) obj;
        if ((this.id == obj2.getId()) && (this.fName.equals(obj2.getfName())) && (this.lName.equals(obj2.getlName()))
                && (this.userName.equals(obj2.getUserName())) && (this.password.equals(obj2.getPassword()))
                && (this.associationNumber == obj2.getAssociationNumber()) && (this.positionTitle.equals(obj2.getPositionTitle()))) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        int tmp = 0;
        tmp = (id + fName + lName + userName + password + associationNumber + positionTitle).hashCode();
        return tmp;
    }
}
