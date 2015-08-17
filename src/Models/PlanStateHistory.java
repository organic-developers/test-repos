package Models;

import javax.persistence.*;
import java.security.Timestamp;
import java.util.Set;


@Entity
public class PlanStateHistory {
    private int id;

    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private Set<Change> changes;

    @OneToMany
    public Set<Change> getChanges() {
        return changes;
    }

    public void setChanges(Set<Change> changes) {
        this.changes = changes;
    }

    private User user;

    @ManyToOne
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    private WorkflowState workflowState;

    @ManyToOne
    public WorkflowState getWorkflowState() {
        return workflowState;
    }

    public void setWorkflowState(WorkflowState workflowState) {
        this.workflowState = workflowState;
    }

    private int createdTimeStamp;

    @Basic
    public int getCreatedTimeStamp() {
        return createdTimeStamp;
    }

    public void setCreatedTimeStamp(int createdTimeStamp) {
        this.createdTimeStamp = createdTimeStamp;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) return false;
        if (!this.getClass().equals(obj.getClass())) return false;

        PlanStateHistory obj2 = (PlanStateHistory) obj;
        if ((this.id == obj2.getId()) && (this.createdTimeStamp == obj2.getCreatedTimeStamp())
                && (this.changes.equals(obj2.getChanges())) && (this.user.equals(obj2.getUser()))
                && (this.workflowState.equals(obj2.getWorkflowState()))) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        int tmp = 0;
        tmp = (id + createdTimeStamp + "" ).hashCode();
        return tmp;
    }
}
