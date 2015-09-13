package Logic;

import Controller.HibernateUtil;
import Models.Association;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;


public class AssociationDAO {

    public Association getAssociationById(int id){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Association e" +
                "where e.id = :id";
        Association association = (Association)session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        session.getTransaction().commit();
        session.close();

        return association;
    }

    public List getAllAssociations(){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Association e";
        List associations = session.createQuery(qry).list();

        session.getTransaction().commit();
        session.close();

        return associations;
    }

    public List getAllActiveAssociations(){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Association e " +
                "where e.active like 'active'";
        List associations = session.createQuery(qry)
                .list();

        session.getTransaction().commit();
        session.close();

        return associations;
    }

    public void activeInactiveToggle(int id){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Association e " +
                "where e.id = :id";
        Association association = (Association) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();
        if(association.getActive().equals("active")) {
            association.setActive("inactive");
        } else {
            association.setActive("active");
        }
        session.update(association);

        session.getTransaction().commit();
        session.close();
    }

    public void addAssociation(Association association){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.save(association);

        session.getTransaction().commit();
        session.close();
    }

    public void updateAssociation(Association association){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.update(association);

        session.getTransaction().commit();
        session.close();
    }
}
