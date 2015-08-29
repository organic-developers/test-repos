package Logic;

import Models.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashSet;


public class PlanCreater {
    public Plan makePlan(HttpServletRequest request) {
        Plan plan = new Plan();

//        plan.setAssociationNumber((Integer) request.getSession().getAttribute("user").getAssociationNumber());
        plan.setTitle(request.getParameter("title"));
        plan.setPlace(request.getParameter("place"));
        plan.setBeginDate(request.getParameter("beginDate"));
        plan.setEndDate(request.getParameter("endDate"));
        plan.setTime(request.getParameter("time"));
        plan.setRequestedItems(request.getParameter("requestedItems"));
        plan.setSupervisorAgreement(request.getParameter("supervisorAgreement"));
        plan.setAdvisorComment(request.getParameter("advisorComment"));
        plan.setExpertComment(request.getParameter("expertComment"));
        plan.setBossComment(request.getParameter("bossComment"));
        plan.setPoster(request.getParameter("poster"));
        plan.setStudentMoney(request.getParameter("studentMoney"));
        plan.setSponsorMoney(request.getParameter("sponsorMoney"));
        plan.setGuidelines(request.getParameter("guidelines"));
        plan.setSidePrograms(request.getParameter("sidePrograms"));
        plan.setResume(request.getParameter("resume"));
        plan.setType(request.getParameter("type"));
        plan.setPoster(request.getParameter("personnel-fName-0"));

        plan.setEnlisted(makeEnlisted(request));
        plan.setExpenses(makeExpenses(request));
        plan.setPersonnel(makePersonnel(request));
        plan.setGuests(makeGuests(request));
        plan.setJudges(makeJudges(request));

        return plan;
    }

    public HashSet makeEnlisted(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("enlisted-fName-" + i) == null || request.getParameter("enlisted-fName-" + i).equals(""))) {
            HashSet<Enlisted> enlisteds = new HashSet<>();
            while (!(request.getParameter("enlisted-fName-" + i) == null || request.getParameter("enlisted-fName-" + i).equals(""))) {
                Enlisted enlisted = new Enlisted();
                enlisted.setfName(request.getParameter("enlisted-fName-" + i));
                enlisted.setlName(request.getParameter("enlisted-lName-" + i));
                enlisted.setStudentID(request.getParameter("enlisted-StudentId-" + i));
                enlisted.setPhone(request.getParameter("enlisted-phone-" + i));
                enlisted.setEmail(request.getParameter("enlisted-email-" + i));
                enlisteds.add(enlisted);
                i++;
            }
            return enlisteds;
        }
        return null;
    }


    public HashSet makeExpenses(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("expense-name-" + i) == null || request.getParameter("expense-name-" + i).equals(""))) {
            HashSet<Expense> expenses = new HashSet<>();
            while (!(request.getParameter("expense-name-" + i) == null || request.getParameter("expense-name-" + i).equals(""))) {
                Expense expense = new Expense();
                expense.setName(request.getParameter("expense-name-" + i));
                expense.setName(request.getParameter("expense-value-" + i));
                expense.setName(request.getParameter("expense-comment-" + i));
                expenses.add(expense);
                i++;
            }
            return expenses;
        }
        return null;
    }

    public HashSet makePersonnel(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("personnel-fName-" + i) == null || request.getParameter("personnel-fName-" + i).equals(""))) {
            HashSet<Personnel> personnels = new HashSet<>();
            while (!(request.getParameter("personnel-fName-" + i) == null || request.getParameter("personnel-fName-" + i).equals(""))) {
                Personnel personnel = new Personnel();
                personnel.setfName(request.getParameter("personnel-fName-" + i));
                personnel.setlName(request.getParameter("personnel-lName-" + i));
                personnel.setPhone(request.getParameter("personnel-phone-" + i));
                personnels.add(personnel);
                i++;
            }
            return personnels;
        }
        return null;
    }

    public HashSet makeGuests(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("guest-fName-" + i) == null || request.getParameter("guest-fName-" + i).equals(""))) {
            HashSet<Guest> guests = new HashSet<>();
            while (!(request.getParameter("guest-fName-" + i) == null || request.getParameter("guest-fName-" + i).equals(""))) {
                Guest guest = new Guest();
                guest.setfName(request.getParameter("guest-fName-" + i));
                guest.setlName(request.getParameter("guest-lName-" + i));
                guests.add(guest);
                i++;
            }
            return guests;
        }
        return null;
    }

    public HashSet makeJudges(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("judge-fName-" + i) == null || request.getParameter("judge-fName-" + i).equals(""))) {
            HashSet<Judge> judges = new HashSet<>();
            while (!(request.getParameter("judge-fName-" + i) == null || request.getParameter("judge-fName-" + i).equals(""))) {
                Judge judge = new Judge();
                judge.setfName(request.getParameter("judge-fName-" + i));
                judge.setlName(request.getParameter("judge-lName-" + i));
                judge.setfName(request.getParameter("judge-fieldOfStudy-" + i));
                judge.setlName(request.getParameter("judge-grade-" + i));
                judges.add(judge);
                i++;
            }
            return judges;
        }
        return null;
    }


}
