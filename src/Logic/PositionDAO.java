package Logic;

import Controller.HibernateUtil;
import Models.Position;
import Models.Position;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

/**
 * Created by Saied on 9/21/2015.
 */
public class PositionDAO {

    public Position getPositionById(int id) {

        Position position = null;

        try {

            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Position e " +
                    " where e.id = :id";

            position = (Position) session.createQuery(qry)
                    .setParameter("id", id)
                    .uniqueResult();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return position;
    }

    public List getAllPositionsExceptExpertAndBoss() {

        List positions = null;

        try {

            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Position e " +
                    " where e.id != 1" +
                    " and e.id != 2";

            positions = session.createQuery(qry)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return positions;
    }

    public List getAllMemberPositionsExceptClerk() {

        List positions = null;

        try {

            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Position e " +
                    " where e.id != 1" +
                    " and e.id != 2" +
                    " and e.id != 3" +
                    " and e.id != 4";

            positions = session.createQuery(qry)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return positions;
    }
}
