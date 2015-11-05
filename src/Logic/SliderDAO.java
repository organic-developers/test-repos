package Logic;

import Controller.HibernateUtil;
import Models.Slider;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

/**
 * Created by Saied on 10/31/2015.
 */
public class SliderDAO {
    public List getAllSliders(){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Slider e";
        List sliders = session.createQuery(qry).list();

        session.getTransaction().commit();
        session.close();

        return sliders;
    }

    public Slider getSlidersById(int id){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Slider e" +
                " where e.id = :id";
        Slider slider = (Slider) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        session.getTransaction().commit();
        session.close();

        return slider;
    }

    public void addSlider(Slider slider){

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.save(slider);

        session.getTransaction().commit();
        session.close();
    }

    public void deleteSlider(Slider slider){

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.delete(slider);

        session.getTransaction().commit();
        session.close();
    }
}
