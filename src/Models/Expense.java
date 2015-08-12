package Models;

/**
 * Created by Saied on 8/9/2015.
 */
public class Expense {
    private int id;
    private String name;
    private long value;
    private String comment;

    public Expense() {}
    public Expense(String name, long value, String comment) {
        this. name = name;
        this.value = value;
        this.comment = comment;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getValue() {
        return value;
    }

    public void setValue(long value) {
        this.value = value;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) return false;
        if (!this.getClass().equals(obj.getClass())) return false;

        Expense obj2 = (Expense) obj;
        if ((this.id == obj2.getId()) && (this.name.equals(obj2.getName()))
                && (this.value == obj2.getValue()) && (this.comment.equals(obj2.getComment()))) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        int tmp = 0;
        tmp = (id + name + value + comment).hashCode();
        return tmp;
    }
}

