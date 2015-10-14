package Logic;

import Controller.HibernateUtil;
import Models.Association;
import Models.User;
import org.hibernate.Hibernate;
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

    public List<User> getAllNotActiveUsers(){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from User e join fetch e.association join fetch e.position" +
                " where e.active like 'false'";

        List users = session.createQuery(qry).list();

        session.getTransaction().commit();
        session.close();

        return users;
    }


    public List<User> getAllActiveUsers(){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from User e join fetch e.association join fetch e.position" +
                " where e.active like 'true'";

        List users = session.createQuery(qry).list();

        session.getTransaction().commit();
        session.close();

        return users;
    }

    public List<User> getAllActiveMembersByAssociationId(int id){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from User e join fetch e.association join fetch e.position" +
                " where e.active like 'true'" +
                " and e.position.id != 3" +
                " and e.association.id = :id";

        List users = session.createQuery(qry)
                .setParameter("id", id)
                .list();

        session.getTransaction().commit();
        session.close();

        return users;
    }

    public List<User> getAllActiveMembersExceptClerkByAssociationId(int id){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from User e join fetch e.association join fetch e.position" +
                " where e.active like 'true'" +
                " and e.position.id != 3" +
                " and e.position.id != 4" +
                " and e.association.id = :id";

        List users = session.createQuery(qry)
                .setParameter("id", id)
                .list();

        session.getTransaction().commit();
        session.close();

        return users;
    }

    public void deactiveAllActiveMembers(){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from User e" +
                " where e.active like 'true'" +
                " and e.position.id != 1" +
                " and e.position.id != 2" +
                " and e.position.id != 3";

        List<User> users = session.createQuery(qry)
                .list();

        for(User user: users){
            user.setActive("false");
            session.update(user);
        }

        session.getTransaction().commit();
        session.close();
    }

    public List getAllActiveUsersExceptExpertAndBoss(){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from User e join fetch e.position join fetch e.association" +
                " where e.active like 'true'" +
                " and e.position.id != 1" +
                " and e.position.id != 2";

        List<User> users = session.createQuery(qry)
                .list();


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

            String qry = "select e from User e join fetch e.association join fetch e.position " +
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

            Hibernate.initialize(user.getPosition());

            session.getTransaction().commit();
            session.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }
}
