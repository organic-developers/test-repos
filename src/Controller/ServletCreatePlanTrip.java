package Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import Models.*;


@WebServlet(name = "ServletCreatePlanTrip")
public class ServletCreatePlanTrip extends HttpServlet {

    HashSet<Enlisted> enlisteds;
    HashSet<Expense> expenses;
    HashSet<Personnel> personnels;
    HashSet<Guest> guests;
    HashSet<Judge> judges;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        switch (request)

    }

    public Plan makePlan(HttpServletRequest request) {
        Plan plan = new Plan();

        plan.setAssociationNumber((Integer) request.getSession().getAttribute("associationNumber"));
        plan.setTitle(request.getParameter("title"));
        plan.setPlace(request.getParameter("place"));
        plan.setBeginDate(Integer.parseInt(request.getParameter("beginDate")));
        plan.setEndDate(Integer.parseInt(request.getParameter("endDate")));
        plan.setTime(request.getParameter("time"));
        plan.setRequestedItems(request.getParameter("requestedItems"));
//        plan.setSupervisorAgreement(request.getParameter("supervisorAgreement"));
        plan.setAdvisorComment(request.getParameter("advisorComment"));
        plan.setExpertComment(request.getParameter("expertComment"));
        plan.setBossComment(request.getParameter("bossComment"));
//        plan.setPoster(request.getParameter("poster"));
        plan.setStudentMoney(request.getParameter("studentMoney"));
        plan.setSponsorMoney(request.getParameter("sponsorMoney"));
//        plan.setGuidelines(request.getParameter("guidelines"));
        plan.setSidePrograms(request.getParameter("sidePrograms"));
//        plan.setResume(request.getParameter("resume"));
        plan.setType(request.getParameter("type"));

        plan.setEnlisted(makeEnlisted(request));
        plan.setExpenses(makeExpenses(request));
        plan.setPersonnel(makePersonnel(request));
        plan.setGuests(makeGuests(request));
        plan.setJudges(makeJudges(request));

        return plan;
    }

    public HashSet makeEnlisted(HttpServletRequest request) {
        int i = 1;
        if (!(request.getParameter("fName" + i) == null || request.getParameter("fName" + i).equals(""))) {
            HashSet<Enlisted> enlisteds = new HashSet<>();
            while (request.getParameter("fName" + i) != null) {
                Enlisted enlisted = new Enlisted();
                enlisted.setfName(request.getParameter("fName" + i));
                enlisted.setlName(request.getParameter("lName" + i));
                enlisted.setStudentID(request.getParameter("StudentId" + i));
                enlisted.setPhone(request.getParameter("phone" + i));
                enlisted.setEmail(request.getParameter("email" + i));
                enlisteds.add(enlisted);
                i++;
            }
            return enlisteds;
        }
        return null;
    }


    public HashSet makeExpenses(HttpServletRequest request) {
        int i = 1;
        if (request.getParameter("name" + i) != null) {
            HashSet<Expense> expenses = new HashSet<>();
            while (request.getParameter("name" + i) != null) {
                Expense expense = new Expense();
                expense.setName(request.getParameter("name" + i));
                expense.setName(request.getParameter("value" + i));
                expense.setName(request.getParameter("comment" + i));
                expenses.add(expense);
                i++;
            }
            return expenses;
        }
        return null;
    }

    public HashSet makePersonnel(HttpServletRequest request) {
        int i = 1;
        if (request.getParameter("fName" + i) != null) {
            HashSet<Personnel> personnels = new HashSet<>();
            while (request.getParameter("fName" + i) != null) {
                Personnel personnel = new Personnel();
                personnel.setfName(request.getParameter("fName" + i));
                personnel.setlName(request.getParameter("lName" + i));
                personnel.setPhone(request.getParameter("phone" + i));
                personnels.add(personnel);
                i++;
            }
            return personnels;
        }
        return null;
    }

    public HashSet makeGuests(HttpServletRequest request) {
        int i = 1;
        if (request.getParameter("fName" + i) != null) {
            HashSet<Guest> guests = new HashSet<>();
            while (request.getParameter("fName" + i) != null) {
                Guest guest = new Guest();
                guest.setfName(request.getParameter("fName" + i));
                guest.setlName(request.getParameter("lName" + i));
                guests.add(guest);
                i++;
            }
            return guests;
        }
        return null;
    }

    public HashSet makeJudges(HttpServletRequest request) {
        int i = 1;
        if (request.getParameter("fName" + i) != null) {
            HashSet<Judge> judges = new HashSet<>();
            while (request.getParameter("fName" + i) != null) {
                Judge judge = new Judge();
                judge.setfName(request.getParameter("fName" + i));
                judge.setlName(request.getParameter("lName" + i));
                judge.setfName(request.getParameter("fieldOfStudy" + i));
                judge.setlName(request.getParameter("grade" + i));
                judges.add(judge);
                i++;
            }
            return judges;
        }
        return null;
    }


}

