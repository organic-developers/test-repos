package Models;

import org.hibernate.annotations.Fetch;

import javax.persistence.*;
import java.util.Set;


@Entity
public class Association {
    private int id;

    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String name;

    @Basic
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private String number;

    @Basic
    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    private String logo;

    @Basic
    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    private String active;

    @Basic
    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }


    private Set<User> users;

    @OneToMany
    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

    private Set<Plan> plans;

    @OneToMany
    public Set<Plan> getPlans() {
        return plans;
    }

    public void setPlans(Set<Plan> plans) {
        this.plans = plans;
    }
}
