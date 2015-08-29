package Models;

import Controller.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.IOException;
import java.util.List;

/**
 * Created by Saied on 8/14/2015.
 */
@Entity
public class User {
    private Integer id;

    @Id
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    private Integer associationNumber;

    @Basic
    public Integer getAssociationNumber() {
        return associationNumber;
    }

    public void setAssociationNumber(Integer associationNumber) {
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
        if ((this.id == obj2.getId())
                && (this.fName.equals(obj2.getfName()))
                && (this.lName.equals(obj2.getlName()))
                && (this.userName.equals(obj2.getUserName()))
                && (this.password.equals(obj2.getPassword()))
                && (this.associationNumber == obj2.getAssociationNumber())
                && (this.positionTitle.equals(obj2.getPositionTitle()))
                && (this.birthYear.equals(obj2.getBirthYear()))
                && (this.email.equals(obj2.getEmail()))
                && (this.nationalId.equals(obj2.getNationalId()))
                && (this.phone.equals(obj2.getPhone()))
                && (this.photo.equals(obj2.getPhoto()))
                && (this.studentId.equals(obj2.getStudentId()))) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        int tmp = 0;
        tmp = (id + fName + lName + userName + password + associationNumber + positionTitle + birthYear + email +
        nationalId + phone + photo + studentId).hashCode();
        return tmp;
    }


    private String birthYear;

    @Basic
    public String getBirthYear() {
        return birthYear;
    }

    public void setBirthYear(String birthYear) {
        this.birthYear = birthYear;
    }

    private String email;

    @Basic
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    private String nationalId;

    @Basic
    public String getNationalId() {
        return nationalId;
    }

    public void setNationalId(String nationalId) {
        this.nationalId = nationalId;
    }

    private String phone;

    @Basic
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    private String photo;

    @Basic
    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    private String studentId;

    @Basic
    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public User isValid() throws IOException {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List modifiedUser = session.createCriteria(User.class)
                .add(Restrictions.eq("userName", userName))
                .add(Restrictions.eq("password", password))
                .list();
        session.getTransaction().commit();
        //session.close();
        User user = (User) modifiedUser.get(0);
        if (!modifiedUser.isEmpty()) {
            return user;
        } else {
            return null;
        }

    }

}
