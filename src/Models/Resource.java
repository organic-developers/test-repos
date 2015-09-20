package Models;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by Saied on 9/18/2015.
 */
@Entity
public class Resource {
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

    private String path;

    @Basic
    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
}
