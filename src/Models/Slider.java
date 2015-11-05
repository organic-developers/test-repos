package Models;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by Saied on 10/31/2015.
 */
@Entity
public class Slider {
    private int id;

    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String comment;

    @Basic
    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
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
