package Logic;

import Controller.HibernateUtil;
import Models.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class UserDAO {

    public List<User> getAllUsers(){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        List users = session.createCriteria(User.class).list();

        session.getTransaction().commit();
        session.close();

        return users;
    }


    public User getUserById(int id){

        User user = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from User e " +
                    " where e.id = :id";
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

    public void addUser(User user) throws HibernateException{
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.save(user);

        session.getTransaction().commit();
        session.close();
    }

    public void updateUser(User user) throws HibernateException{
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.update(user);

        session.getTransaction().commit();
        session.close();
    }
}
