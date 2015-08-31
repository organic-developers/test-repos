package Models;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.Set;


@Entity
public class WorkflowState {
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

    private Set<WorkflowNavigation> workflowNavigations;

    @OneToMany
    public Set<WorkflowNavigation> getWorkflowNavigations() {
        return workflowNavigations;
    }

    public void setWorkflowNavigations(Set<WorkflowNavigation> workflowNavigations) {
        this.workflowNavigations = workflowNavigations;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) return false;
        if (!this.getClass().equals(obj.getClass())) return false;

        WorkflowState obj2 = (WorkflowState) obj;
        if ((this.id == obj2.getId())
                && (this.name.equals(obj2.getName()))
                && (this.workflowNavigations.equals(obj2.getWorkflowNavigations()))) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        int tmp = 0;
        tmp = (id + name).hashCode();
        return tmp;
    }

    private String box;

    @Basic
    public String getBox() {
        return box;
    }

    public void setBox(String box) {
        this.box = box;
    }
}
