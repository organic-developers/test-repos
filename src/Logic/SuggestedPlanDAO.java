package Logic;

import Controller.HibernateUtil;
import Models.SuggestedPlan;
import Models.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

/**
 * Created by Saied on 9/23/2015.
 */
public class SuggestedPlanDAO {

    public void addSuggestedPlan(SuggestedPlan suggestedPlan){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.save(suggestedPlan);

        session.getTransaction().commit();
        session.close();
    }

    public SuggestedPlan getSuggestedPlanById(int id){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from SuggestedPlan e" +
                " where id = :id";
        SuggestedPlan suggestedPlan = (SuggestedPlan) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        session.getTransaction().commit();
        session.close();

        return suggestedPlan;
    }

    public List getAllSuggestedPlans(){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from SuggestedPlan e";
        List suggestedPlans = session.createQuery(qry)
                .list();

        session.getTransaction().commit();
        session.close();

        return suggestedPlans;
    }

    public void updateSuggestedPlan(SuggestedPlan suggestedPlan){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.update(suggestedPlan);

        session.getTransaction().commit();
        session.close();
    }

    public List<SuggestedPlan> getSuggestedPlansByAssociationId(int id) {
        List suggestedPlans = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from SuggestedPlan e join fetch e.association a" +
                    " where a.id = :id";
            suggestedPlans = session.createQuery(qry)
                    .setParameter("id", id)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return suggestedPlans;
    }

    public List<SuggestedPlan> getInViewSuggestedPlansByAssociationId(int id) {
        List suggestedPlans = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from SuggestedPlan e join fetch e.association a" +
                    " where a.id = :id" +
                    " and e.inView like 'true'";
            suggestedPlans = session.createQuery(qry)
                    .setParameter("id", id)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return suggestedPlans;
    }

    public int addLikeNumber(int id) {
        SuggestedPlan suggestedPlan = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from SuggestedPlan e" +
                    " where e.id = :id";
            suggestedPlan = (SuggestedPlan) session.createQuery(qry)
                    .setParameter("id", id)
                    .uniqueResult();

            suggestedPlan.setLikeNumber(suggestedPlan.getLikeNumber() + 1);

            session.update(suggestedPlan);

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return suggestedPlan.getLikeNumber();
    }

    public void deleteSuggestedPlanById(int id) {
        SuggestedPlan suggestedPlan = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from SuggestedPlan e" +
                    " where e.id = :id";
            suggestedPlan = (SuggestedPlan) session.createQuery(qry)
                    .setParameter("id", id)
                    .uniqueResult();

            session.delete(suggestedPlan);

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
