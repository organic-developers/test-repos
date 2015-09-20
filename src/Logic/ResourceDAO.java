package Logic;

import Controller.HibernateUtil;
import Models.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

/**
 * Created by Saied on 9/18/2015.
 */
public class ResourceDAO {
    public List getAllResources(){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Resource e";
        List resources = session.createQuery(qry).list();

        session.getTransaction().commit();
        session.close();

        return resources;
    }

    public Resource getResourceById(int id){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Resource e" +
                " where e.id = :id";
        Resource resource = (Resource) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        session.getTransaction().commit();
        session.close();

        return resource;
    }

    public void addResourse(Resource resource){

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.save(resource);

        session.getTransaction().commit();
        session.close();
    }

    public void deleteResource(Resource resource){

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.delete(resource);

        session.getTransaction().commit();
        session.close();
    }
}
