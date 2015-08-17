package Models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 * Created by Saied on 8/17/2015.
 */
@Entity
public class WorkflowNavigation {
    private int id;
    private WorkflowState nextWorkflowState;

    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne
    public WorkflowState getNextWorkflowState() {
        return nextWorkflowState;
    }

    public void setNextWorkflowState(WorkflowState nextWorkflowState) {
        this.nextWorkflowState = nextWorkflowState;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) return false;
        if (!this.getClass().equals(obj.getClass())) return false;

        WorkflowNavigation obj2 = (WorkflowNavigation) obj;
        if ((this.id == obj2.getId())
                && (this.nextWorkflowState.equals(obj2.getNextWorkflowState()))) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        int tmp = 0;
        tmp = (id + "").hashCode();
        return tmp;
    }
}
