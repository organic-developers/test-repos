package Logic;

import Controller.HibernateUtil;
import Models.Workflow;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

/**
 * Created by Saied on 9/18/2015.
 */
public class WorkflowDAO {

    public List getAllWorkflows(){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Workflow e";

        List workflows = session.createQuery(qry).list();

        session.getTransaction().commit();
        session.close();

        return workflows;
    }

    public Workflow getWorkflowById(int id){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Workflow e" +
                " where e.id = :id";

        Workflow workflow = (Workflow) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        session.getTransaction().commit();
        session.close();

        return workflow;
    }

}
