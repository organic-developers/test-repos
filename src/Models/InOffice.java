package Models;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by Saied on 9/20/2015.
 */
@Entity
public class InOffice {
    private int id;

    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String fromDate;

    @Basic
    public String getFromDate() {
        return fromDate;
    }

    public void setFromDate(String from) {
        this.fromDate = from;
    }

    private String toDate;

    @Basic
    public String getToDate() {
        return toDate;
    }

    public void setToDate(String toDate) {
        this.toDate = toDate;
    }
}
