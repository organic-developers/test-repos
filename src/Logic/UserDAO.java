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

    public User getUser(String nationalId){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        User user = (User) session.createCriteria("User.class")
                .add(Restrictions.eq("nationalId", nationalId)).list().get(0);

        session.getTransaction().commit();
        session.close();

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

//        User user = session.createCriteria("User.class")
        session.save(user);

        session.getTransaction().commit();
        session.close();
    }
}
