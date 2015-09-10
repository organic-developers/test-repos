package Logic;

import Controller.HibernateUtil;
import Models.Plan;
import Models.WorkflowState;
import org.hibernate.Session;
import org.hibernate.SessionFactory;



public class WorkflowStateDAO {
    public WorkflowState getWorkflowStateById(int id) {

        WorkflowState workflowState = null;

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from WorkflowState e " +
                " where e.id = :id";
        workflowState = (WorkflowState) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        session.getTransaction().commit();
        session.close();

        return workflowState;
    }
}
