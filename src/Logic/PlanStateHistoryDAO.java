package Logic;

import Controller.HibernateUtil;
import Models.PlanStateHistory;
import Models.User;
import com.ghasemkiani.util.icu.PersianCalendar;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by Saied on 10/6/2015.
 */
public class PlanStateHistoryDAO {

    public PlanStateHistory getObserveEvent(User user) {
        PlanStateHistory planStateHistory = new PlanStateHistory();
        planStateHistory.setName("\u0645\u0634\u0627\u0647\u062F\u0647");
        planStateHistory.setUser(user);
        planStateHistory.setTimestamp(getTimeStamp());
        return planStateHistory;
    }

    public String getTimeStamp(){
        PersianCalendar persianCalendar1 = new PersianCalendar(new Date());

        String timeStamp = persianCalendar1.get(Calendar.YEAR)
                + "-" + (persianCalendar1.get(Calendar.MONTH) + 1)
                + "-" + persianCalendar1.get(Calendar.DAY_OF_MONTH)
                + " " + persianCalendar1.get(Calendar.HOUR_OF_DAY)
                + ":" + persianCalendar1.get(Calendar.MINUTE)
                + ":" + persianCalendar1.get(Calendar.SECOND);
        return timeStamp;
    }

    public void addEvent(PlanStateHistory PlanStateHistory) throws HibernateException {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.save(PlanStateHistory);

        session.getTransaction().commit();
        session.close();
    }

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

    public PlanStateHistory getPlanStateHistoryById(int id){

        PlanStateHistory planStateHistory = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from PlanStateHistory e " +
                    "where e.id = :id";
            planStateHistory = (PlanStateHistory) session.createQuery( qry )
                    .setParameter( "id", id )
                    .uniqueResult();

            Hibernate.initialize(planStateHistory.getChanges());

            session.getTransaction().commit();
            session.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return planStateHistory;
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
