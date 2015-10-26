package Models;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;
import java.util.Set;

/**
 * Created by Saied on 9/25/2015.
 */
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

    private String name;

    @javax.persistence.Basic
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private String timestamp;

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }

    private User user;

    @javax.persistence.ManyToOne
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    private WorkflowState workflowState;

    @javax.persistence.ManyToOne
    public WorkflowState getWorkflowState() {
        return workflowState;
    }

    public void setWorkflowState(WorkflowState workflowState) {
        this.workflowState = workflowState;
    }

    private Set<Change> changes;

    @javax.persistence.OneToMany
    public Set<Change> getChanges() {
        return changes;
    }

    public void setChanges(Set<Change> changes) {
        this.changes = changes;
    }
}
