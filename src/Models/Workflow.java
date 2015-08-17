package Models;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.Set;

/**
 * Created by Saied on 8/17/2015.
 */
@Entity
public class Workflow {
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

    private Set<WorkflowState> workflowStates;

    @OneToMany
    public Set<WorkflowState> getWorkflowStates() {
        return workflowStates;
    }

    public void setWorkflowStates(Set<WorkflowState> workflowStates) {
        this.workflowStates = workflowStates;
    }
}
