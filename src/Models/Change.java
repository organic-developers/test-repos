package Models;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by Saied on 8/17/2015.
 */
@Entity
public class Change {
    private int id;

    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String fieldName;

    @Basic
    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    private String modifiedTo;

    @Basic
    public String getModifiedTo() {
        return modifiedTo;
    }

    public void setModifiedTo(String fieldValue) {
        this.modifiedTo = fieldValue;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) return false;
        if (!this.getClass().equals(obj.getClass())) return false;

        Change obj2 = (Change) obj;
        if ((this.id == obj2.getId()) && (this.fieldName.equals(obj2.getFieldName()))
                && (this.modifiedTo.equals(obj2.getModifiedTo()))) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        int tmp = 0;
        tmp = (id + fieldName + modifiedTo).hashCode();
        return tmp;
    }

    private String modifiedFrom;

    @Basic
    public String getModifiedFrom() {
        return modifiedFrom;
    }

    public void setModifiedFrom(String modified_from) {
        this.modifiedFrom = modified_from;
    }

    private String json;

    @Basic
    public String getJson() {
        return json;
    }

    public void setJson(String json) {
        this.json = json;
    }
}
