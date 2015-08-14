package Models;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Member {
    private int id;

    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    private int studnetID;

    @Basic
    public int getStudnetID() {
        return studnetID;
    }

    public void setStudnetID(int studnetID) {
        this.studnetID = studnetID;
    }

    private String nationalID;

    @Basic
    public String getNationalID() {
        return nationalID;
    }

    public void setNationalID(String nationalID) {
        this.nationalID = nationalID;
    }

    private String birthYear;

    @Basic
    public String getBirthYear() {
        return birthYear;
    }

    public void setBirthYear(String birthYear) {
        this.birthYear = birthYear;
    }

    private String phone;

    @Basic
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    private String email;

    @Basic
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    private String photo;

    @Basic
    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) return false;
        if (!this.getClass().equals(obj.getClass())) return false;

        Member obj2 = (Member) obj;
        if ((this.id == obj2.getId()) && (this.associationNumber == obj2.getAssociationNumber())
                && (this.positionTitle.equals(obj2.getPositionTitle())) && (this.fName.equals(obj2.getfName()))
                && (this.lName.equals(obj2.getlName())) && (this.studnetID == obj2.getStudnetID())
                && (this.nationalID.equals(obj2.getNationalID())) && (this.birthYear.equals(obj2.getBirthYear()))
                && (this.phone.equals(obj2.getPhone())) && (this.email.equals(obj2.getEmail()))
                && (this.photo.equals(obj2.getPhoto()))
                ) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        int tmp = 0;
        tmp = (id + associationNumber + positionTitle + fName + lName + studnetID + nationalID
                + birthYear + phone + email + photo ).hashCode();
        return tmp;
    }
}
