package Logic;

import Controller.HibernateUtil;
import Models.Plan;
import Models.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class PlanDAO {

    public List<User> getAllPlans() {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        List plans = session.createCriteria(Plan.class).list();

        session.getTransaction().commit();
        session.close();

        return plans;
    }

    public Plan getPlanById(int id) {

        Plan plan = null;

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

        return plan;
    }

    public List<Plan> getPlansByAssociationNumber(int associationNumber){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Plan e " +
                " where e.associationNumber = :associationNumber";
        List plans = session.createQuery( qry )
                .setParameter( "associationNumber", associationNumber )
                .list();

        session.getTransaction().commit();
        session.close();

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
}