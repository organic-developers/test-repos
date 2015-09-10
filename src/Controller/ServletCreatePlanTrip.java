package Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.HashSet;

import Logic.PlanDAO;
import Logic.WorkflowStateDAO;
import Models.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


@WebServlet(name = "ServletCreatePlanTrip", urlPatterns = {"/ServletCreatePlanTrip"})
@MultipartConfig(location = "C:\\Users\\Saied\\IdeaProjects\\scientific-associations\\web\\uploaded-files", fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
public class ServletCreatePlanTrip extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        PlanDAO planDAO = new PlanDAO();

        Plan plan = makePlan(request);

        try {

            planDAO.addPlan(plan);

            request.getRequestDispatcher("/app/successful.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher("/app/failed.jsp").forward(request, response);
        }

    }


    public Plan makePlan(HttpServletRequest request) throws IOException, ServletException {
        Plan plan = new Plan();

        plan.setAssociationNumber(((User) request.getSession().getAttribute("user")).getAssociationNumber());
        plan.setTitle(request.getParameter("title"));
        plan.setPlace(request.getParameter("place"));
        plan.setBeginDate(request.getParameter("beginDate"));
        plan.setEndDate(request.getParameter("endDate"));
        plan.setTime(request.getParameter("time"));
        plan.setRequestedItems(request.getParameter("requestedItems"));
        plan.setAdvisorComment(request.getParameter("advisorComment"));
        plan.setExpertComment(request.getParameter("expertComment"));
        plan.setBossComment(request.getParameter("bossComment"));
        plan.setStudentMoney(request.getParameter("studentMoney"));
        plan.setSponsorMoney(request.getParameter("sponsorMoney"));
        plan.setSidePrograms(request.getParameter("sidePrograms"));


        String directory = "/uploaded-files/";

        Part sa = request.getPart("supervisorAgreement");
        if (sa != null) {
            sa.write(sa.getSubmittedFileName());
            plan.setSupervisorAgreement(directory + sa.getSubmittedFileName());
        }


        Part guidelines = request.getPart("guidelines");
        if (guidelines != null) {
            guidelines.write(guidelines.getSubmittedFileName());
            plan.setGuidelines(directory + guidelines.getSubmittedFileName());
        }


        Part resume = request.getPart("resume");
        if (resume != null) {
            resume.write(resume.getSubmittedFileName());
            plan.setResume(directory + resume.getSubmittedFileName());
        }


        Part poster = request.getPart("poster");
        if (poster != null) {
            poster.write("poster");
            plan.setPoster(directory + poster.getSubmittedFileName());
        }


        plan.setEnlisted(makeEnlisted(request));
        plan.setExpenses(makeExpenses(request));
        plan.setPersonnel(makePersonnel(request));
        plan.setGuests(makeGuests(request));
        plan.setJudges(makeJudges(request));


        WorkflowStateDAO workflowStateDAO = new WorkflowStateDAO();

        switch (request.getParameter("type").trim()){
            case "planTrip":
                plan.setType("»«“œ?œ ⁄·„?");
                plan.setWorkflowState(workflowStateDAO.getWorkflowStateById(1));
                break;
//            case "„”«»ﬁÂ ⁄·„?":
//                workflowState.setId();
//                break;
//            .
//            .
//            .
//            default:
//                workflowState.setId();
        }

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
        if (!(request.getParameter("expense-name-" + i) == null)) {
            if (!(request.getParameter("expense-name-" + i).equals(""))) {
                HashSet<Expense> expenses = new HashSet<>();
                while (!(request.getParameter("expense-name-" + i) == null)) {
                    if (!(request.getParameter("expense-name-" + i).equals(""))) {
                        Expense expense = new Expense();
                        expense.setName(request.getParameter("expense-name-" + i));
                        expense.setValue(request.getParameter("expense-value-" + i));
                        expense.setComment(request.getParameter("expense-comment-" + i));
                        expenses.add(expense);
                        i++;
                    }
                }
                return expenses;
            }
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
                judge.setFieldOfStudy(request.getParameter("judge-fieldOfStudy-" + i));
                judge.setGrade(request.getParameter("judge-grade-" + i));
                judges.add(judge);
                i++;
            }
            return judges;
        }
        return null;
    }

}

