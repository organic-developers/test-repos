package Logic;

import Controller.HibernateUtil;
import Models.Association;
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

        String qry = "select e from User e join fetch e.association";

        List users = session.createQuery(qry).list();

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

            String qry = "select e from User e join fetch e.association " +
                    "where e.id = :id";
            user = (User) session.createQuery( qry )
                    .setParameter( "id", id )
                    .uniqueResult();
//            Association association = user.getAssociation();
//            System.out.println("" + association.getNumber() + association.getName() + association.getId());

//            user.getAssociation().setUsers(null);

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

    public User getUserByUsernameAndPassword(String userName, String password) throws HibernateException{
        User user = null;

        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if(sessionFactory == null){
                System.out.println("null");
            }
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from User e join fetch e.association" +
                    " where e.userName like :userName and e.password like :password";
            user = (User) session.createQuery(qry)
                    .setParameter("userName", userName)
                    .setParameter("password", password)
                    .uniqueResult();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }
}
