package Logic;

import Controller.HibernateUtil;
import Models.Plan;
import Models.User;
import Models.WorkflowNavigation;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;
import java.util.Set;

public class PlanDAO {

    public List<Plan> getAllPlans() {
        List<Plan> plans = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

//        List plans = session.createCriteria(Plan.class).list();

            String qry = "select e from Plan e join fetch e.workflowState";
            plans = session.createQuery(qry)
                    .list();

            session.getTransaction().commit();
            session.close();
        }catch (Exception e){
            e.printStackTrace();
        }

        return plans;
    }

    public Plan getPlanById(int id) {

        Plan plan = null;

        try{

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Plan e " +
                " where e.id = :id";
        plan = (Plan) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        session.getTransaction().commit();
        session.close();
        }catch (Exception e){
            e.printStackTrace();
        }

        return plan;
    }

    public Plan getCompletePlanById(int id) {

        Plan plan = null;

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Plan e" +
                " where e.id = :id";
        plan = (Plan) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        session.getTransaction().commit();
        session.close();

        return plan;
    }

    public List<Plan> getPlansByAssociationNumber(int associationNumber){
        List<Plan> plans = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e join fetch e.workflowState" +
                    " where e.associationNumber = :associationNumber";
            plans = session.createQuery(qry)
                    .setParameter("associationNumber", associationNumber)
                    .list();


            session.getTransaction().commit();
            session.close();

            System.out.println(plans.size());
        } catch (HibernateException e){
            e.printStackTrace();
        }
        return plans;
    }

    public void addPlan(Plan plan) throws HibernateException {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.save(plan);

        session.getTransaction().commit();
        session.close();
    }

    public void updatePlan(Plan plan) throws HibernateException {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.update(plan);

        session.getTransaction().commit();
        session.close();
    }
    public void workflowForward(int id) throws HibernateException {

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Plan e " +
                " where e.id = :id";
        Plan plan = (Plan) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        Set<WorkflowNavigation> workflowNavigations = plan.getWorkflowState().getWorkflowNavigations();
        for (WorkflowNavigation workflowNavigation: workflowNavigations ){
            if(workflowNavigation.getName().equals("forward")){
                plan.setWorkflowState(workflowNavigation.getNextWorkflowState());
            }
        }

        session.update(plan);

        session.getTransaction().commit();
        session.close();
    }

    public void workflowToBeCorrected(int id) throws HibernateException {

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Plan e " +
                " where e.id = :id";
        Plan plan = (Plan) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        Set<WorkflowNavigation> workflowNavigations = plan.getWorkflowState().getWorkflowNavigations();
        for (WorkflowNavigation workflowNavigation: workflowNavigations ){
            if(workflowNavigation.getName().equals("")){
                plan.setWorkflowState(workflowNavigation.getNextWorkflowState());
            }
        }

        session.update(plan);

        session.getTransaction().commit();
        session.close();
    }

    public void workflowRejected(int id) throws HibernateException {

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Plan e " +
                " where e.id = :id";
        Plan plan = (Plan) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        Set<WorkflowNavigation> workflowNavigations = plan.getWorkflowState().getWorkflowNavigations();
        for (WorkflowNavigation workflowNavigation: workflowNavigations ){
            if(workflowNavigation.getName().equals("rejected")){
                plan.setWorkflowState(workflowNavigation.getNextWorkflowState());
            }
        }

        session.update(plan);

        session.getTransaction().commit();
        session.close();
    }
}