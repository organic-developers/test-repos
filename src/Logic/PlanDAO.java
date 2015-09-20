package Logic;

import Controller.HibernateUtil;
import Models.Plan;
import Models.User;
import Models.WorkflowNavigation;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;
import java.util.Set;

public class PlanDAO {

    public List<Plan> getAllPlans() {
        List plans = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

//        List plans = session.createCriteria(Plan.class).list();

            String qry = "select e from Plan e join fetch e.workflowState join fetch e.association";
            plans = session.createQuery(qry)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return plans;
    }


    public List<Plan> getAdvertisingPlans() {
        List plans = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e join fetch e.association" +
                    " where :today >= e.advertisementBeginDate and :today <= e.advertisementEndDate";
            plans = session.createQuery(qry)
//                    .setParameter("today", today)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return plans;
    }

    public List<Plan> getRegistringPlansByAssociationId(int id) {
        List plans = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e join fetch e.association" +
                    " where :today >= e.registrationBeginDate and :today <= e.registrationEndDate";
            plans = session.createQuery(qry)
//                    .setParameter("today", today)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return plans;
    }

    public List<Plan> getFinishedPlansByAssociationId(int id) {
        List plans = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e join fetch e.association" +
                    " where :today >= e.registrationBeginDate and :today <= e.registrationEndDate";
            plans = session.createQuery(qry)
//                    .setParameter("today", today)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return plans;
    }

    public List<Plan> getFuturePlansByAssociationId(int id) {
        List plans = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e join fetch e.association" +
                    " where :today >= e.registrationBeginDate and :today <= e.registrationEndDate";
            plans = session.createQuery(qry)
//                    .setParameter("today", today)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return plans;
    }

    public List<Plan> getSuggestedPlansByAssociationId(int id) {
        List plans = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e join fetch e.association" +
                    " where :today >= e.registrationBeginDate and :today <= e.registrationEndDate";
            plans = session.createQuery(qry)
//                    .setParameter("today", today)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return plans;
    }

    public Plan getPlanById(int id) {

        Plan plan = null;

        try {

            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e " +
                    " where e.id = :id";
            plan = (Plan) session.createQuery(qry)
                    .setParameter("id", id)
                    .uniqueResult();

            Hibernate.initialize(plan.getAssociation());
            Hibernate.initialize(plan.getWorkflow());
            Hibernate.initialize(plan.getWorkflowState());

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return plan;
    }

    public Plan getCompletePlanById(int id) {

        Plan plan = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e" +
                    " where e.id = :id";
            plan = (Plan) session.createQuery(qry)
                    .setParameter("id", id)
                    .uniqueResult();

            Hibernate.initialize(plan.getAssociation());
            Hibernate.initialize(plan.getWorkflow());
            Hibernate.initialize(plan.getWorkflowState());
            Hibernate.initialize(plan.getPersonnel());
            Hibernate.initialize(plan.getExpenses());
            Hibernate.initialize(plan.getEnlisted());
            Hibernate.initialize(plan.getGuests());
            Hibernate.initialize(plan.getJudges());
            Hibernate.initialize(plan.getPlanStateHistory());

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return plan;
    }

    public List<Plan> getPlansByAssociationId(int associationId) {

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Plan e join fetch e.workflowState join fetch e.association a " +
                "where a.id = :associationId";
        List plans = session.createQuery(qry)
                .setParameter("associationId", associationId)
                .list();

        session.getTransaction().commit();
        session.close();

        return plans;
    }

    public void addPlan(Plan plan) throws HibernateException {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.saveOrUpdate(plan);

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
        for (WorkflowNavigation workflowNavigation : workflowNavigations) {
            if (workflowNavigation.getName().equals("forward")) {
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
        for (WorkflowNavigation workflowNavigation : workflowNavigations) {
            if (workflowNavigation.getName().equals("toBeCorrected")) {
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
        for (WorkflowNavigation workflowNavigation : workflowNavigations) {
            if (workflowNavigation.getName().equals("rejected")) {
                plan.setWorkflowState(workflowNavigation.getNextWorkflowState());
            }
        }

        session.update(plan);

        session.getTransaction().commit();
        session.close();
    }
}