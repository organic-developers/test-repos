package Logic;

import Controller.HibernateUtil;
import Models.*;
import com.ghasemkiani.util.icu.PersianCalendar;
import com.google.gson.Gson;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.*;
import java.util.Calendar;

public class PlanDAO {

    public List<Plan> getAllPlans() {
        List plans = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

//        List plans = session.createCriteria(Plan.class).list();

            String qry = "select e from Plan e join fetch e.workflowState join fetch e.association";
            plans = session.createQuery(qry)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return plans;
    }


    public List<Plan> getAdvertisingPlans() {
        List plans = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e join fetch e.association" +
                    " where :today >= e.advertisementBeginDate and :today <= e.advertisementEndDate";
            plans = session.createQuery(qry)
//                    .setParameter("today", today)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return plans;
    }

    public List<Plan> getRegistringPlansByAssociationId(int associationId) {
        List plans = null;

        String today = getTodayDate();

        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e join fetch e.workflow join fetch e.association a" +
                    " where a.id = :associationId and " +
                    " :today BETWEEN e.registrationBeginDate AND e.registrationEndDate";
            plans = session.createQuery(qry)
                    .setParameter("associationId", associationId)
                    .setParameter("today", today)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return plans;
    }

    public List<Plan> getFinishedPlansByAssociationId(int associationId) {
        List plans = null;

        String today = getTodayDate();

        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e join fetch e.workflow join fetch e.association a" +
                    " where a.id = :associationId and " +
                    " :today <= e.endDate";
            plans = session.createQuery(qry)
                    .setParameter("associationId", associationId)
                    .setParameter("today", today)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return plans;
    }

    public List<Plan> getFuturePlansByAssociationId(int id) {
        List plans = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e join fetch e.association" +
                    " where :today >= e.registrationBeginDate and :today <= e.registrationEndDate";
            plans = session.createQuery(qry)
//                    .setParameter("today", today)
                    .list();

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return plans;
    }

    public Plan getPlanById(int id) {

        Plan plan = null;

        try {

            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e " +
                    " where e.id = :id";
            plan = (Plan) session.createQuery(qry)
                    .setParameter("id", id)
                    .uniqueResult();

            Hibernate.initialize(plan.getAssociation());
            Hibernate.initialize(plan.getWorkflow());
            Hibernate.initialize(plan.getWorkflowState());
            Hibernate.initialize(plan.getPlanStateHistories());

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return plan;
    }

    public Plan getCompletePlanById(int id) {

        Plan plan = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String qry = "select e from Plan e" +
                    " where e.id = :id";
            plan = (Plan) session.createQuery(qry)
                    .setParameter("id", id)
                    .uniqueResult();

            Hibernate.initialize(plan.getAssociation());
            Hibernate.initialize(plan.getWorkflow());
            Hibernate.initialize(plan.getWorkflowState());
            Hibernate.initialize(plan.getPersonnel());
            Hibernate.initialize(plan.getExpenses());
            Hibernate.initialize(plan.getEnlisted());
            Hibernate.initialize(plan.getGuests());
            Hibernate.initialize(plan.getJudges());
            Hibernate.initialize(plan.getPlanStateHistories());
            for (PlanStateHistory PlanStateHistory : plan.getPlanStateHistories()) {
                Hibernate.initialize(PlanStateHistory.getWorkflowState());
                Hibernate.initialize(PlanStateHistory.getUser().getPosition());
            }

            session.getTransaction().commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return plan;
    }

    public List<Plan> getPlansByAssociationId(int associationId) {

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Plan e join fetch e.workflowState join fetch e.association a " +
                "where a.id = :associationId";
        List plans = session.createQuery(qry)
                .setParameter("associationId", associationId)
                .list();

        session.getTransaction().commit();
        session.close();

        return plans;
    }

    public void addPlan(Plan plan) throws HibernateException {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.saveOrUpdate(plan);

        session.getTransaction().commit();
        session.close();
    }

    public void updatePlan(Plan plan) throws HibernateException {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.update(plan);

        session.getTransaction().commit();
        session.close();
    }

    public WorkflowState getWorkflowForward(int id) throws HibernateException {

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Plan e " +
                " where e.id = :id";
        Plan plan = (Plan) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        Set<WorkflowNavigation> workflowNavigations = plan.getWorkflowState().getWorkflowNavigations();
        WorkflowState workflowState = null;
        for (WorkflowNavigation workflowNavigation : workflowNavigations) {
            if (workflowNavigation.getName().equals("forward")) {
                workflowState = workflowNavigation.getNextWorkflowState();
//                plan.setWorkflowState(workflowNavigation.getNextWorkflowState());
            }
        }

        session.getTransaction().commit();
        session.close();

        return workflowState;
    }

    public WorkflowState getWorkflowToBeCorrected(int id) throws HibernateException {

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Plan e " +
                " where e.id = :id";
        Plan plan = (Plan) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        Set<WorkflowNavigation> workflowNavigations = plan.getWorkflowState().getWorkflowNavigations();
        WorkflowState workflowState = null;
        for (WorkflowNavigation workflowNavigation : workflowNavigations) {
            if (workflowNavigation.getName().equals("toBeCorrected")) {
                workflowState = workflowNavigation.getNextWorkflowState();
            }
        }

        session.update(plan);

        session.getTransaction().commit();
        session.close();

        return workflowState;
    }

    public WorkflowState getWorkflowRejected(int id) throws HibernateException {

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        String qry = "select e from Plan e " +
                " where e.id = :id";
        Plan plan = (Plan) session.createQuery(qry)
                .setParameter("id", id)
                .uniqueResult();

        Set<WorkflowNavigation> workflowNavigations = plan.getWorkflowState().getWorkflowNavigations();
        WorkflowState workflowState = null;
        for (WorkflowNavigation workflowNavigation : workflowNavigations) {
            if (workflowNavigation.getName().equals("rejected")) {
                workflowState = workflowNavigation.getNextWorkflowState();
            }
        }

        session.update(plan);

        session.getTransaction().commit();
        session.close();

        return workflowState;
    }

    public PlanStateHistory getPlanStateHistoryCreatePlan(User user, Plan plan) {
        PlanStateHistory planStateHistory = new PlanStateHistory();
        planStateHistory.setUser(user);
        planStateHistory.setTimestamp(getTimeStamp());

        planStateHistory.setWorkflowState(plan.getWorkflowState());
        planStateHistory.setChanges(getChangesCreatePlan(plan));
        return planStateHistory;
    }

    public Set getChangesCreatePlan(Plan plan) {
        Set changes = new HashSet<>();

        if (plan.getTitle() != null && !plan.getTitle().equals("")) {
            Change change = new Change();
            change.setFieldName("title");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getTitle());
            changes.add(change);
        }
        if (plan.getPlace() != null && !plan.getPlace().equals("")) {
            Change change = new Change();
            change.setFieldName("place");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getPlace());
            changes.add(change);
        }
        if (plan.getBeginDate() != null && !plan.getBeginDate().equals("")) {
            Change change = new Change();
            change.setFieldName("beginDate");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getBeginDate());
            changes.add(change);
        }
        if (plan.getEndDate() != null && !plan.getEndDate().equals("")) {
            Change change = new Change();
            change.setFieldName("endDate");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getEndDate());
            changes.add(change);
        }
        if (plan.getTime() != null && !plan.getTime().equals("")) {
            Change change = new Change();
            change.setFieldName("time");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getTime());
            changes.add(change);
        }
        if (plan.getRequestedItems() != null && !plan.getRequestedItems().equals("")) {
            Change change = new Change();
            change.setFieldName("requestedItems");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getRequestedItems());
            changes.add(change);
        }
        if (plan.getStudentMoney() != null && !plan.getStudentMoney().equals("")) {
            Change change = new Change();
            change.setFieldName("studentMoney");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getStudentMoney());
            changes.add(change);
        }
        if (plan.getSponsorMoney() != null && !plan.getSponsorMoney().equals("")) {
            Change change = new Change();
            change.setFieldName("sponsorMoney");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getSponsorMoney());
            changes.add(change);
        }
        if (plan.getOtherIncome() != null && !plan.getOtherIncome().equals("")) {
            Change change = new Change();
            change.setFieldName("otherIncome");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getOtherIncome());
            changes.add(change);
        }
        if (plan.getSidePrograms() != null && !plan.getSidePrograms().equals("")) {
            Change change = new Change();
            change.setFieldName("sidePrograms");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getSidePrograms());
            changes.add(change);
        }
        if (plan.getRegistrationBeginDate() != null && !plan.getRegistrationBeginDate().equals("")) {
            Change change = new Change();
            change.setFieldName("registrationBeginDate");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getRegistrationBeginDate());
            changes.add(change);
        }
        if (plan.getRegistrationEndDate() != null && !plan.getRegistrationEndDate().equals("")) {
            Change change = new Change();
            change.setFieldName("registrationEndDate");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getRegistrationEndDate());
            changes.add(change);
        }
        if (plan.getAdvertisementBeginDate() != null && !plan.getAdvertisementBeginDate().equals("")) {
            Change change = new Change();
            change.setFieldName("advertisementBeginDate");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getAdvertisementBeginDate());
            changes.add(change);
        }
        if (plan.getAdvertisementEndDate() != null && !plan.getAdvertisementEndDate().equals("")) {
            Change change = new Change();
            change.setFieldName("advertisementEndDate");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getAdvertisementEndDate());
            changes.add(change);
        }
        if (plan.getRegistrationMin() != null && !plan.getRegistrationMin().equals("")) {
            Change change = new Change();
            change.setFieldName("registrationMin");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getRegistrationMin());
            changes.add(change);
        }
        if (plan.getRegistrationMax() != null && !plan.getRegistrationMax().equals("")) {
            Change change = new Change();
            change.setFieldName("registrationMax");
            change.setModifiedFrom("");
            change.setModifiedTo(plan.getRegistrationMax());
            changes.add(change);
        }
        if (plan.getSupervisorFName() != null && !plan.getSupervisorFName().equals("")) {
            Change change = new Change();
            change.setFieldName("supervisor");
            change.setModifiedFrom("");
            String text = plan.getSupervisorFName() + "-" + plan.getSupervisorLName() + "-" +
                    plan.getSupervisorPosition() + "-" + plan.getSupervisorPhone();
            change.setModifiedTo(text);
            changes.add(change);
        }
        if (plan.getExpenses() != null && plan.getExpenses().size() > 0) {
            Change change = new Change();
            change.setFieldName("expenses");
            change.setModifiedFrom("");
            change.setModifiedTo(new Gson().toJson(plan.getExpenses()));
            change.setJson("expenses");
            changes.add(change);
        }
        if (plan.getPersonnel() != null && plan.getPersonnel().size() > 0) {
            Change change = new Change();
            change.setFieldName("personnel");
            change.setModifiedFrom("");
            change.setModifiedTo(new Gson().toJson(plan.getPersonnel()));
            change.setJson("personnel");
            changes.add(change);
        }
        if (plan.getEnlisted() != null && plan.getEnlisted().size() > 0) {
            Change change = new Change();
            change.setFieldName("enlisted");
            change.setModifiedFrom("");
            change.setModifiedTo(new Gson().toJson(plan.getEnlisted()));
            change.setJson("enlisted");
            changes.add(change);
        }
        if (plan.getGuests() != null && plan.getGuests().size() > 0) {
            Change change = new Change();
            change.setFieldName("guests");
            change.setModifiedFrom("");
            change.setModifiedTo(new Gson().toJson(plan.getGuests()));
            change.setJson("guests");
            changes.add(change);
        }
        if (plan.getJudges() != null && plan.getJudges().size() > 0) {
            Change change = new Change();
            change.setFieldName("judges");
            change.setModifiedFrom("");
            change.setModifiedTo(new Gson().toJson(plan.getJudges()));
            change.setJson("judges");
            changes.add(change);
        }
        return changes;
    }

//    public void addPlanStateHistory(User user, Plan plan) {
//        PlanStateHistory PlanStateHistory = new PlanStateHistory();
//        PlanStateHistory.setUser(user);
//        PlanStateHistory.setTimestamp(getTimeStamp());
//
//        Plan plan1 = getCompletePlanById(plan.getId());
//
//        PlanStateHistory.setWorkflowState(plan.getWorkflowState());
//        PlanStateHistory.setChanges(getChanges(plan1, plan));
//
//        plan.getPlanStateHistories().add(PlanStateHistory);
//
//        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
//        Session session = sessionFactory.openSession();
//        session.beginTransaction();
//
//        session.update(plan);
//
//        session.getTransaction().commit();
//        session.close();
//    }

    public PlanStateHistory getPlanStateHistory(User user, Plan plan) {
        PlanStateHistory planStateHistory = new PlanStateHistory();
        planStateHistory.setUser(user);
        planStateHistory.setTimestamp(getTimeStamp());

        Plan plan1 = getCompletePlanById(plan.getId());

        planStateHistory.setWorkflowState(plan.getWorkflowState());
        planStateHistory.setChanges(getChanges(plan1, plan));

        return planStateHistory;
    }

    public Set getChanges(Plan plan1, Plan plan) {
        Set changes = new HashSet<>();
//        if(!(plan1.getTitle().equals(plan.getTitle()))){
//            Change change = new Change();
//            change.setFieldName("title");
//            change.setModifiedFrom(plan1.getTitle());
//            change.setModifiedTo(plan.getTitle());
//            changes.add(change);
//        }

        if (!((plan.getTitle() == null || plan.getTitle().equals("")) && (plan1.getTitle() == null || plan1.getTitle().equals("")))) {
            if ((plan.getTitle() != null && !plan.getTitle().equals("")) && (plan1.getTitle() != null && !plan1.getTitle().equals(""))) {
                if (!plan.getTitle().equals(plan1.getTitle())) {
                    Change change = new Change();
                    change.setFieldName("title");
                    change.setModifiedFrom(plan1.getTitle());
                    change.setModifiedTo(plan.getTitle());
                    changes.add(change);
                }
            } else if (plan.getTitle() != null && !plan.getTitle().equals("")) {
                Change change = new Change();
                change.setFieldName("title");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getTitle());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("title");
                change.setModifiedFrom(plan1.getTitle());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getPlace() == null || plan.getPlace().equals("")) && (plan1.getPlace() == null || plan1.getPlace().equals("")))) {
            if ((plan.getPlace() != null && !plan.getPlace().equals("")) && (plan1.getPlace() != null && !plan1.getPlace().equals(""))) {
                if (!plan.getPlace().equals(plan1.getPlace())) {
                    Change change = new Change();
                    change.setFieldName("place");
                    change.setModifiedFrom(plan1.getPlace());
                    change.setModifiedTo(plan.getPlace());
                    changes.add(change);
                }
            } else if (plan.getPlace() != null && !plan.getPlace().equals("")) {
                Change change = new Change();
                change.setFieldName("place");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getPlace());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("place");
                change.setModifiedFrom(plan1.getPlace());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getBeginDate() == null || plan.getBeginDate().equals("")) && (plan1.getBeginDate() == null || plan1.getBeginDate().equals("")))) {
            if ((plan.getBeginDate() != null && !plan.getBeginDate().equals("")) && (plan1.getBeginDate() != null && !plan1.getBeginDate().equals(""))) {
                if (!plan.getBeginDate().equals(plan1.getBeginDate())) {
                    Change change = new Change();
                    change.setFieldName("beginDate");
                    change.setModifiedFrom(plan1.getBeginDate());
                    change.setModifiedTo(plan.getBeginDate());
                    changes.add(change);
                }
            } else if (plan.getBeginDate() != null && !plan.getBeginDate().equals("")) {
                Change change = new Change();
                change.setFieldName("beginDate");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getBeginDate());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("beginDate");
                change.setModifiedFrom(plan1.getBeginDate());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getEndDate() == null || plan.getEndDate().equals("")) && (plan1.getEndDate() == null || plan1.getEndDate().equals("")))) {
            if ((plan.getEndDate() != null && !plan.getEndDate().equals("")) && (plan1.getEndDate() != null && !plan1.getEndDate().equals(""))) {
                if (!plan.getEndDate().equals(plan1.getEndDate())) {
                    Change change = new Change();
                    change.setFieldName("endDate");
                    change.setModifiedFrom(plan1.getEndDate());
                    change.setModifiedTo(plan.getEndDate());
                    changes.add(change);
                }
            } else if (plan.getEndDate() != null && !plan.getEndDate().equals("")) {
                Change change = new Change();
                change.setFieldName("endDate");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getEndDate());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("endDate");
                change.setModifiedFrom(plan1.getEndDate());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getTime() == null || plan.getTime().equals("")) && (plan1.getTime() == null || plan1.getTime().equals("")))) {
            if ((plan.getTime() != null && !plan.getTime().equals("")) && (plan1.getTime() != null && !plan1.getTime().equals(""))) {
                if (!plan.getTime().equals(plan1.getTime())) {
                    Change change = new Change();
                    change.setFieldName("time");
                    change.setModifiedFrom(plan1.getTime());
                    change.setModifiedTo(plan.getTime());
                    changes.add(change);
                }
            } else if (plan.getTime() != null && !plan.getTime().equals("")) {
                Change change = new Change();
                change.setFieldName("time");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getTime());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("time");
                change.setModifiedFrom(plan1.getTime());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getRequestedItems() == null || plan.getRequestedItems().equals("")) && (plan1.getRequestedItems() == null || plan1.getRequestedItems().equals("")))) {
            if ((plan.getRequestedItems() != null && !plan.getRequestedItems().equals("")) && (plan1.getRequestedItems() != null && !plan1.getRequestedItems().equals(""))) {
                if (!plan.getRequestedItems().equals(plan1.getRequestedItems())) {
                    Change change = new Change();
                    change.setFieldName("requestedItems");
                    change.setModifiedFrom(plan1.getRequestedItems());
                    change.setModifiedTo(plan.getRequestedItems());
                    changes.add(change);
                }
            } else if (plan.getRequestedItems() != null && !plan.getRequestedItems().equals("")) {
                Change change = new Change();
                change.setFieldName("requestedItems");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getRequestedItems());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("requestedItems");
                change.setModifiedFrom(plan1.getRequestedItems());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getStudentMoney() == null || plan.getStudentMoney().equals("")) && (plan1.getStudentMoney() == null || plan1.getStudentMoney().equals("")))) {
            if ((plan.getStudentMoney() != null && !plan.getStudentMoney().equals("")) && (plan1.getStudentMoney() != null && !plan1.getStudentMoney().equals(""))) {
                if (!plan.getStudentMoney().equals(plan1.getStudentMoney())) {
                    Change change = new Change();
                    change.setFieldName("studentMoney");
                    change.setModifiedFrom(plan1.getStudentMoney());
                    change.setModifiedTo(plan.getStudentMoney());
                    changes.add(change);
                }
            } else if (plan.getStudentMoney() != null && !plan.getStudentMoney().equals("")) {
                Change change = new Change();
                change.setFieldName("studentMoney");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getStudentMoney());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("studentMoney");
                change.setModifiedFrom(plan1.getStudentMoney());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getSponsorMoney() == null || plan.getSponsorMoney().equals("")) && (plan1.getSponsorMoney() == null || plan1.getSponsorMoney().equals("")))) {
            if ((plan.getSponsorMoney() != null && !plan.getSponsorMoney().equals("")) && (plan1.getSponsorMoney() != null && !plan1.getSponsorMoney().equals(""))) {
                if (!plan.getSponsorMoney().equals(plan1.getSponsorMoney())) {
                    Change change = new Change();
                    change.setFieldName("sponsorMoney");
                    change.setModifiedFrom(plan1.getSponsorMoney());
                    change.setModifiedTo(plan.getSponsorMoney());
                    changes.add(change);
                }
            } else if (plan.getSponsorMoney() != null && !plan.getSponsorMoney().equals("")) {
                Change change = new Change();
                change.setFieldName("sponsorMoney");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getSponsorMoney());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("sponsorMoney");
                change.setModifiedFrom(plan1.getSponsorMoney());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getOtherIncome() == null || plan.getOtherIncome().equals("")) && (plan1.getOtherIncome() == null || plan1.getOtherIncome().equals("")))) {
            if ((plan.getOtherIncome() != null && !plan.getOtherIncome().equals("")) && (plan1.getOtherIncome() != null && !plan1.getOtherIncome().equals(""))) {
                if (!plan.getOtherIncome().equals(plan1.getOtherIncome())) {
                    Change change = new Change();
                    change.setFieldName("otherIncome");
                    change.setModifiedFrom(plan1.getOtherIncome());
                    change.setModifiedTo(plan.getOtherIncome());
                    changes.add(change);
                }
            } else if (plan.getOtherIncome() != null && !plan.getOtherIncome().equals("")) {
                Change change = new Change();
                change.setFieldName("otherIncome");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getOtherIncome());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("otherIncome");
                change.setModifiedFrom(plan1.getOtherIncome());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getSidePrograms() == null || plan.getSidePrograms().equals("")) && (plan1.getSidePrograms() == null || plan1.getSidePrograms().equals("")))) {
            if ((plan.getSidePrograms() != null && !plan.getSidePrograms().equals("")) && (plan1.getSidePrograms() != null && !plan1.getSidePrograms().equals(""))) {
                if (!plan.getSidePrograms().equals(plan1.getSidePrograms())) {
                    Change change = new Change();
                    change.setFieldName("sidePrograms");
                    change.setModifiedFrom(plan1.getSidePrograms());
                    change.setModifiedTo(plan.getSidePrograms());
                    changes.add(change);
                }
            } else if (plan.getSidePrograms() != null && !plan.getSidePrograms().equals("")) {
                Change change = new Change();
                change.setFieldName("sidePrograms");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getSidePrograms());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("sidePrograms");
                change.setModifiedFrom(plan1.getSidePrograms());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getRegistrationBeginDate() == null || plan.getRegistrationBeginDate().equals("")) && (plan1.getRegistrationBeginDate() == null || plan1.getRegistrationBeginDate().equals("")))) {
            if ((plan.getRegistrationBeginDate() != null && !plan.getRegistrationBeginDate().equals("")) && (plan1.getRegistrationBeginDate() != null && !plan1.getRegistrationBeginDate().equals(""))) {
                if (!plan.getRegistrationBeginDate().equals(plan1.getRegistrationBeginDate())) {
                    Change change = new Change();
                    change.setFieldName("registrationBeginDate");
                    change.setModifiedFrom(plan1.getRegistrationBeginDate());
                    change.setModifiedTo(plan.getRegistrationBeginDate());
                    changes.add(change);
                }
            } else if (plan.getRegistrationBeginDate() != null && !plan.getRegistrationBeginDate().equals("")) {
                Change change = new Change();
                change.setFieldName("registrationBeginDate");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getRegistrationBeginDate());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("registrationBeginDate");
                change.setModifiedFrom(plan1.getRegistrationBeginDate());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getRegistrationEndDate() == null || plan.getRegistrationEndDate().equals("")) && (plan1.getRegistrationEndDate() == null || plan1.getRegistrationEndDate().equals("")))) {
            if ((plan.getRegistrationEndDate() != null && !plan.getRegistrationEndDate().equals("")) && (plan1.getRegistrationEndDate() != null && !plan1.getRegistrationEndDate().equals(""))) {
                if (!plan.getRegistrationEndDate().equals(plan1.getRegistrationEndDate())) {
                    Change change = new Change();
                    change.setFieldName("registrationEndDate");
                    change.setModifiedFrom(plan1.getRegistrationEndDate());
                    change.setModifiedTo(plan.getRegistrationEndDate());
                    changes.add(change);
                }
            } else if (plan.getRegistrationEndDate() != null && !plan.getRegistrationEndDate().equals("")) {
                Change change = new Change();
                change.setFieldName("registrationEndDate");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getRegistrationEndDate());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("registrationEndDate");
                change.setModifiedFrom(plan1.getRegistrationEndDate());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getAdvertisementBeginDate() == null || plan.getAdvertisementBeginDate().equals("")) && (plan1.getAdvertisementBeginDate() == null || plan1.getAdvertisementBeginDate().equals("")))) {
            if ((plan.getAdvertisementBeginDate() != null && !plan.getAdvertisementBeginDate().equals("")) && (plan1.getAdvertisementBeginDate() != null && !plan1.getAdvertisementBeginDate().equals(""))) {
                if (!plan.getAdvertisementBeginDate().equals(plan1.getAdvertisementBeginDate())) {
                    Change change = new Change();
                    change.setFieldName("advertisementBeginDate");
                    change.setModifiedFrom(plan1.getAdvertisementBeginDate());
                    change.setModifiedTo(plan.getAdvertisementBeginDate());
                    changes.add(change);
                }
            } else if (plan.getAdvertisementBeginDate() != null && !plan.getAdvertisementBeginDate().equals("")) {
                Change change = new Change();
                change.setFieldName("advertisementBeginDate");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getAdvertisementBeginDate());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("advertisementBeginDate");
                change.setModifiedFrom(plan1.getAdvertisementBeginDate());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getAdvertisementEndDate() == null || plan.getAdvertisementEndDate().equals("")) && (plan1.getAdvertisementEndDate() == null || plan1.getAdvertisementEndDate().equals("")))) {
            if ((plan.getAdvertisementEndDate() != null && !plan.getAdvertisementEndDate().equals("")) && (plan1.getAdvertisementEndDate() != null && !plan1.getAdvertisementEndDate().equals(""))) {
                if (!plan.getAdvertisementEndDate().equals(plan1.getAdvertisementEndDate())) {
                    Change change = new Change();
                    change.setFieldName("advertisementEndDate");
                    change.setModifiedFrom(plan1.getAdvertisementEndDate());
                    change.setModifiedTo(plan.getAdvertisementEndDate());
                    changes.add(change);
                }
            } else if (plan.getAdvertisementEndDate() != null && !plan.getAdvertisementEndDate().equals("")) {
                Change change = new Change();
                change.setFieldName("advertisementEndDate");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getAdvertisementEndDate());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("advertisementEndDate");
                change.setModifiedFrom(plan1.getAdvertisementEndDate());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getRegistrationMin() == null || plan.getRegistrationMin().equals("")) && (plan1.getRegistrationMin() == null || plan1.getRegistrationMin().equals("")))) {
            if ((plan.getRegistrationMin() != null && !plan.getRegistrationMin().equals("")) && (plan1.getRegistrationMin() != null && !plan1.getRegistrationMin().equals(""))) {
                if (!plan.getRegistrationMin().equals(plan1.getRegistrationMin())) {
                    Change change = new Change();
                    change.setFieldName("registrationMin");
                    change.setModifiedFrom(plan1.getRegistrationMin());
                    change.setModifiedTo(plan.getRegistrationMin());
                    changes.add(change);
                }
            } else if (plan.getRegistrationMin() != null && !plan.getRegistrationMin().equals("")) {
                Change change = new Change();
                change.setFieldName("registrationMin");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getRegistrationMin());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("registrationMin");
                change.setModifiedFrom(plan1.getRegistrationMin());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getRegistrationMax() == null || plan.getRegistrationMax().equals("")) && (plan1.getRegistrationMax() == null || plan1.getRegistrationMax().equals("")))) {
            if ((plan.getRegistrationMax() != null && !plan.getRegistrationMax().equals("")) && (plan1.getRegistrationMax() != null && !plan1.getRegistrationMax().equals(""))) {
                if (!plan.getRegistrationMax().equals(plan1.getRegistrationMax())) {
                    Change change = new Change();
                    change.setFieldName("registrationMax");
                    change.setModifiedFrom(plan1.getRegistrationMax());
                    change.setModifiedTo(plan.getRegistrationMax());
                    changes.add(change);
                }
            } else if (plan.getRegistrationMax() != null && !plan.getRegistrationMax().equals("")) {
                Change change = new Change();
                change.setFieldName("registrationMax");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getRegistrationMax());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("registrationMax");
                change.setModifiedFrom(plan1.getRegistrationMax());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getRegistrationPlace() == null || plan.getRegistrationPlace().equals("")) && (plan1.getRegistrationPlace() == null || plan1.getRegistrationPlace().equals("")))) {
            if ((plan.getRegistrationPlace() != null && !plan.getRegistrationPlace().equals("")) && (plan1.getRegistrationPlace() != null && !plan1.getRegistrationPlace().equals(""))) {
                if (!plan.getRegistrationPlace().equals(plan1.getRegistrationPlace())) {
                    Change change = new Change();
                    change.setFieldName("registrationPlace");
                    change.setModifiedFrom(plan1.getRegistrationPlace());
                    change.setModifiedTo(plan.getRegistrationPlace());
                    changes.add(change);
                }
            } else if (plan.getRegistrationPlace() != null && !plan.getRegistrationPlace().equals("")) {
                Change change = new Change();
                change.setFieldName("registrationPlace");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getRegistrationPlace());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("registrationPlace");
                change.setModifiedFrom(plan1.getRegistrationPlace());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getRegistrationFee() == null || plan.getRegistrationFee().equals("")) && (plan1.getRegistrationFee() == null || plan1.getRegistrationFee().equals("")))) {
            if ((plan.getRegistrationFee() != null && !plan.getRegistrationFee().equals("")) && (plan1.getRegistrationFee() != null && !plan1.getRegistrationFee().equals(""))) {
                if (!plan.getRegistrationFee().equals(plan1.getRegistrationFee())) {
                    Change change = new Change();
                    change.setFieldName("registrationFee");
                    change.setModifiedFrom(plan1.getRegistrationFee());
                    change.setModifiedTo(plan.getRegistrationFee());
                    changes.add(change);
                }
            } else if (plan.getRegistrationFee() != null && !plan.getRegistrationFee().equals("")) {
                Change change = new Change();
                change.setFieldName("registrationFee");
                change.setModifiedFrom("");
                change.setModifiedTo(plan.getRegistrationFee());
                changes.add(change);
            } else {
                Change change = new Change();
                change.setFieldName("registrationFee");
                change.setModifiedFrom(plan1.getRegistrationFee());
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getSupervisorFName() == null || plan.getSupervisorFName().equals("")) && (plan1.getSupervisorFName() == null || plan1.getSupervisorFName().equals("")))) {
            if ((plan.getSupervisorFName() != null && !plan.getSupervisorFName().equals("")) && (plan1.getSupervisorFName() != null && !plan1.getSupervisorFName().equals(""))) {
                if (!(plan.getSupervisorFName().equals(plan1.getSupervisorFName()) &&
                        (plan.getSupervisorLName().equals(plan1.getSupervisorLName())) &&
                        (plan.getSupervisorPosition().equals(plan1.getSupervisorPosition())) &&
                        (plan.getSupervisorPhone().equals(plan1.getSupervisorPhone())))) {
                    Change change = new Change();
                    change.setFieldName("supervisor");
                    String from = plan1.getSupervisorFName() + "-" + plan1.getSupervisorLName() + "-" +
                            plan1.getSupervisorPosition() + "-" + plan1.getSupervisorPhone();
                    change.setModifiedFrom(from);
                    String to = plan.getSupervisorFName() + "-" + plan.getSupervisorLName() + "-" +
                            plan.getSupervisorPosition() + "-" + plan.getSupervisorPhone();
                    change.setModifiedTo(to);
                    changes.add(change);
                }
            } else if (plan.getSupervisorFName() != null && !plan.getSupervisorFName().equals("")) {
                Change change = new Change();
                change.setFieldName("supervisor");
                String to = plan.getSupervisorFName() + "-" + plan.getSupervisorLName() + "-" +
                        plan.getSupervisorPosition() + "-" + plan.getSupervisorPhone();
                change.setModifiedFrom("");
                change.setModifiedTo(to);
                changes.add(change);

            } else {
                Change change = new Change();
                change.setFieldName("supervisor");
                String from = plan1.getSupervisorFName() + "-" + plan1.getSupervisorLName() + "-" +
                        plan1.getSupervisorPosition() + "-" + plan1.getSupervisorPhone();
                change.setModifiedFrom(from);
                change.setModifiedTo("");
                changes.add(change);
            }
        }

        if (!((plan.getPersonnel() == null || plan.getPersonnel().size() == 0) && (plan1.getPersonnel() == null || plan1.getPersonnel().size() == 0))) {
            if (plan.getPersonnel() != null && plan1.getPersonnel() != null && plan.getPersonnel().size() > 0 &&
                    plan1.getPersonnel().size() > 0) {
                for(Personnel personnel: (List<Personnel>)plan1.getPersonnel()){
                    personnel.setId(0);
                }
                for(Personnel personnel: (List<Personnel>)plan.getPersonnel()){
                    personnel.setId(0);
                }
                if (!(new Gson().toJson(plan.getPersonnel()).equals(new Gson().toJson(plan1.getPersonnel())))) {
                    Change change = new Change();
                    change.setFieldName("personnel");
                    change.setModifiedFrom(new Gson().toJson(plan1.getPersonnel()));
                    change.setModifiedTo(new Gson().toJson(plan.getPersonnel()));
                    change.setJson("personnel");
                    changes.add(change);
                }
            } else if (plan.getPersonnel() != null && plan.getPersonnel().size() > 0) {
                Change change = new Change();
                change.setFieldName("personnel");
                change.setModifiedFrom("");
                change.setModifiedTo(new Gson().toJson(plan.getPersonnel()));
                change.setJson("personnel");
                changes.add(change);
            } else if (plan1.getPersonnel() != null && plan1.getPersonnel().size() > 0) {
                Change change = new Change();
                change.setFieldName("personnel");
                change.setModifiedFrom(new Gson().toJson(plan1.getPersonnel()));
                change.setModifiedTo("");
                change.setJson("personnel");
                changes.add(change);
            }
        }

        if (!((plan.getExpenses() == null || plan.getExpenses().size() == 0) && (plan1.getExpenses() == null || plan1.getExpenses().size() == 0))) {
            if (plan.getExpenses() != null && plan1.getExpenses() != null && plan.getExpenses().size() > 0 &&
                    plan1.getExpenses().size() > 0) {
                for(Expense expense: (List<Expense>)plan1.getExpenses()){
                    expense.setId(0);
                }
                for(Expense expense: (List<Expense>)plan.getExpenses()){
                    expense.setId(0);
                }
                if (!(new Gson().toJson(plan.getExpenses()).equals(new Gson().toJson(plan1.getExpenses())))) {
                    Change change = new Change();
                    change.setFieldName("expenses");
                    change.setModifiedFrom(new Gson().toJson(plan1.getExpenses()));
                    change.setModifiedTo(new Gson().toJson(plan.getExpenses()));
                    change.setJson("expenses");
                    changes.add(change);
                }
            } else if (plan.getExpenses() != null && plan.getExpenses().size() > 0) {
                Change change = new Change();
                change.setFieldName("expenses");
                change.setModifiedFrom("");
                change.setModifiedTo(new Gson().toJson(plan.getExpenses()));
                change.setJson("expenses");
                changes.add(change);
            } else if (plan1.getExpenses() != null && plan1.getExpenses().size() > 0) {
                Change change = new Change();
                change.setFieldName("expenses");
                change.setModifiedFrom(new Gson().toJson(plan1.getExpenses()));
                change.setModifiedTo("");
                change.setJson("expenses");
                changes.add(change);
            }
        }

        if (!((plan.getEnlisted() == null || plan.getEnlisted().size() == 0) && (plan1.getEnlisted() == null || plan1.getEnlisted().size() == 0))) {
            if (plan.getEnlisted() != null && plan1.getEnlisted() != null && plan.getEnlisted().size() > 0 &&
                    plan1.getEnlisted().size() > 0) {
                for(Enlisted enlisted: (List<Enlisted>)plan1.getEnlisted()){
                    enlisted.setId(0);
                }
                for(Enlisted enlisted: (List<Enlisted>)plan.getEnlisted()){
                    enlisted.setId(0);
                }
                if (!(new Gson().toJson(plan.getEnlisted()).equals(new Gson().toJson(plan1.getEnlisted())))) {
                    Change change = new Change();
                    change.setFieldName("enlisted");
                    change.setModifiedFrom(new Gson().toJson(plan1.getEnlisted()));
                    change.setModifiedTo(new Gson().toJson(plan.getEnlisted()));
                    change.setJson("enlisted");
                    changes.add(change);
                }
            } else if (plan.getEnlisted() != null && plan.getEnlisted().size() > 0) {
                Change change = new Change();
                change.setFieldName("enlisted");
                change.setModifiedFrom("");
                change.setModifiedTo(new Gson().toJson(plan.getEnlisted()));
                change.setJson("enlisted");
                changes.add(change);
            } else if (plan1.getEnlisted() != null && plan1.getEnlisted().size() > 0) {
                Change change = new Change();
                change.setFieldName("enlisted");
                change.setModifiedFrom(new Gson().toJson(plan1.getEnlisted()));
                change.setModifiedTo("");
                change.setJson("enlisted");
                changes.add(change);
            }
        }

        if (!((plan.getJudges() == null || plan.getJudges().size() == 0) && (plan1.getJudges() == null || plan1.getJudges().size() == 0))) {
            if (plan.getJudges() != null && plan1.getJudges() != null && plan.getJudges().size() > 0 &&
                    plan1.getJudges().size() > 0) {
                for(Judge judge: (List<Judge>)plan1.getJudges()){
                    judge.setId(0);
                }
                for(Judge judge: (List<Judge>)plan.getJudges()){
                    judge.setId(0);
                }
                if (!(new Gson().toJson(plan.getJudges()).equals(new Gson().toJson(plan1.getJudges())))) {
                    Change change = new Change();
                    change.setFieldName("judges");
                    change.setModifiedFrom(new Gson().toJson(plan1.getJudges()));
                    change.setModifiedTo(new Gson().toJson(plan.getJudges()));
                    change.setJson("judges");
                    changes.add(change);
                }
            } else if (plan.getJudges() != null && plan.getJudges().size() > 0) {
                Change change = new Change();
                change.setFieldName("judges");
                change.setModifiedFrom("");
                change.setModifiedTo(new Gson().toJson(plan.getJudges()));
                change.setJson("judges");
                changes.add(change);
            } else if (plan1.getJudges() != null && plan1.getJudges().size() > 0) {
                Change change = new Change();
                change.setFieldName("judges");
                change.setModifiedFrom(new Gson().toJson(plan1.getJudges()));
                change.setModifiedTo("");
                change.setJson("judges");
                changes.add(change);
            }
        }

        if (!((plan.getGuests() == null || plan.getGuests().size() == 0) && (plan1.getGuests() == null || plan1.getGuests().size() == 0))) {
            if (plan.getGuests() != null && plan1.getGuests() != null && plan.getGuests().size() > 0 &&
                    plan1.getGuests().size() > 0) {
                for(Guest guest: (List<Guest>)plan1.getGuests()){
                    guest.setId(0);
                }
                for(Guest guest: (List<Guest>)plan.getGuests()){
                    guest.setId(0);
                }
                if (!(new Gson().toJson(plan.getGuests()).equals(new Gson().toJson(plan1.getGuests())))) {
                    Change change = new Change();
                    change.setFieldName("guests");
                    change.setModifiedFrom(new Gson().toJson(plan1.getGuests()));
                    change.setModifiedTo(new Gson().toJson(plan.getGuests()));
                    change.setJson("guests");
                    changes.add(change);
                }
            } else if (plan.getGuests() != null && plan.getGuests().size() > 0) {
                Change change = new Change();
                change.setFieldName("guests");
                change.setModifiedFrom("");
                change.setModifiedTo(new Gson().toJson(plan.getGuests()));
                change.setJson("guests");
                changes.add(change);
            } else if (plan1.getGuests() != null && plan1.getGuests().size() > 0) {
                Change change = new Change();
                change.setFieldName("guests");
                change.setModifiedFrom(new Gson().toJson(plan1.getGuests()));
                change.setModifiedTo("");
                change.setJson("guests");
                changes.add(change);
            }
        }

        return changes;
    }

    public String getTimeStamp() {
        PersianCalendar persianCalendar1 = new PersianCalendar(new Date());

        String timeStamp = persianCalendar1.get(Calendar.YEAR)
                + "-" + (persianCalendar1.get(Calendar.MONTH) + 1)
                + "-" + persianCalendar1.get(Calendar.DAY_OF_MONTH)
                + " " + persianCalendar1.get(Calendar.HOUR_OF_DAY)
                + ":" + persianCalendar1.get(Calendar.MINUTE)
                + ":" + persianCalendar1.get(Calendar.SECOND);
        return timeStamp;
    }

    public String getTodayDate() {

        PersianCalendar persianCalendar = new PersianCalendar();
        String today = "" + persianCalendar.get(Calendar.YEAR);
        if (persianCalendar.get(Calendar.MONTH) + 1 <= 9) {
            today += "/0" + (persianCalendar.get(Calendar.MONTH) + 1);
        } else {
            today += "/" + (persianCalendar.get(Calendar.MONTH) + 1);
        }
        if (persianCalendar.get(Calendar.DAY_OF_MONTH) <= 9) {
            today += "/0" + persianCalendar.get(Calendar.DAY_OF_MONTH);
        } else {
            today += "/" + persianCalendar.get(Calendar.DAY_OF_MONTH);
        }
        return today;
    }
}