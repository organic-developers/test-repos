package Logic;

import Controller.HibernateUtil;
import Models.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 * Created by Saied on 11/27/2015.
 */
public class InOfficeDAO {

    public User getInOfficeHistoryByUserId(int id){

        User user = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from InOffice e " +
                    "where e.id = :id";
            user = (User) session.createQuery( qry )
                    .setParameter( "id", id )
                    .uniqueResult();

            session.getTransaction().commit();
            session.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }
}
