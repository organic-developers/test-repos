package Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import Logic.PlanDAO;
import Logic.WorkflowDAO;
import Logic.WorkflowStateDAO;
import Models.*;


@WebServlet(name = "ServletCreatePlanTrip", urlPatterns = {"/ServletCreatePlanTrip"})
@MultipartConfig(location = "C:\\Users\\Saied\\IdeaProjects\\scientific-associations\\web\\uploaded-files", fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
public class ServletCreatePlanTrip extends HttpServlet {

    private PlanDAO planDAO = new PlanDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        Plan plan = makePlan(request);

        List<PlanStateHistory> planStateHistories = new ArrayList<>();
        planStateHistories.add(planDAO.getPlanStateHistoryCreatePlan((User) request.getSession().getAttribute("currentUser"), plan));
        plan.setPlanStateHistories(planStateHistories);

        try {
            planDAO.addPlan(plan);

        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher("/app/failed.jsp").forward(request, response);
        }

        request.getRequestDispatcher("/app/successful.jsp").forward(request, response);
    }


    public Plan makePlan(HttpServletRequest request) throws IOException, ServletException {
        Plan plan = new Plan();

        plan.setAssociation(((User) request.getSession().getAttribute("currentUser")).getAssociation());
        if (request.getParameter("id") != null && !request.getParameter("id").equals("")) {
            plan.setId(Integer.parseInt(request.getParameter("id")));
        }
        plan.setTitle(request.getParameter("title"));
        plan.setPlace(request.getParameter("place"));
        plan.setBeginDate(request.getParameter("beginDate"));
        plan.setEndDate(request.getParameter("endDate"));
        plan.setTime(request.getParameter("time"));
        plan.setRequestedItems(request.getParameter("requestedItems"));
        plan.setRegistrationMin(request.getParameter("registrationMin"));
        plan.setRegistrationMax(request.getParameter("registrationMax"));
        plan.setSupervisorFName(request.getParameter("supervisorFName"));
        plan.setSupervisorLName(request.getParameter("supervisorLName"));
        plan.setSupervisorPosition(request.getParameter("supervisorPosition"));
        plan.setSupervisorPhone(request.getParameter("supervisorPhone"));
        plan.setAdvisorComment(request.getParameter("advisorComment"));
        plan.setExpertComment(request.getParameter("expertComment"));
        plan.setBossComment(request.getParameter("bossComment"));
        plan.setStudentMoney(request.getParameter("studentMoney"));
        plan.setSponsorMoney(request.getParameter("sponsorMoney"));
        plan.setOtherIncome(request.getParameter("otherIncome"));
        plan.setExpenseSum(request.getParameter("expenseSum"));
        plan.setIncomeSum(request.getParameter("incomeSum"));
        plan.setMoneySum(request.getParameter("moneySum"));
        plan.setSidePrograms(request.getParameter("sidePrograms"));

        plan.setSeen("false");


        String directory = "/uploaded-files/";

//        try {
//            Part sa = request.getPart("supervisorAgreement");
//            if (sa != null) {
//                sa.write(sa.getSubmittedFileName());
//                plan.setSupervisorAgreement(directory + sa.getSubmittedFileName());
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }

        try {
            Part guidelines = request.getPart("guidelines");
            if (guidelines != null) {
                guidelines.write(guidelines.getSubmittedFileName());
                plan.setGuidelines(directory + guidelines.getSubmittedFileName());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        try {
            Part resume = request.getPart("resume");
            if (resume != null) {
                resume.write(resume.getSubmittedFileName());
                plan.setResume(directory + resume.getSubmittedFileName());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        try {
            Part poster = request.getPart("poster");
            if (poster != null) {
                poster.write(poster.getSubmittedFileName());
                plan.setPoster(directory + poster.getSubmittedFileName());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        try {
            Part attachment = request.getPart("attachment");
            if (attachment != null && !attachment.getSubmittedFileName().equals("")) {
                attachment.write(attachment.getSubmittedFileName());
                plan.setAttachment(directory + attachment.getSubmittedFileName());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        plan.setEnlisted(makeEnlisted(request));
        plan.setExpenses(makeExpenses(request));
        plan.setPersonnel(makePersonnel(request));
        plan.setGuests(makeGuests(request));
        plan.setJudges(makeJudges(request));


        WorkflowStateDAO workflowStateDAO = new WorkflowStateDAO();
        WorkflowDAO workflowDAO = new WorkflowDAO();

        switch (request.getParameter("type").trim()) {
            case "1":
                plan.setWorkflow(workflowDAO.getWorkflowById(Integer.parseInt(request.getParameter("type").trim())));
                if (request.getParameter("submit").equals("tentative")) {
                    plan.setWorkflowState(workflowStateDAO.getWorkflowStateById(15));
                } else if (request.getParameter("submit").equals("send")) {
                    plan.setWorkflowState(workflowStateDAO.getWorkflowStateById(1));
                }
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


    public List makeEnlisted(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("enlisted-fName-" + i) == null || request.getParameter("enlisted-fName-" + i).equals(""))) {
            List enlisteds = new ArrayList<>();
            while (!(request.getParameter("enlisted-fName-" + i) == null || request.getParameter("enlisted-fName-" + i).equals(""))) {
                Enlisted enlisted = new Enlisted();
                enlisted.setfName(request.getParameter("enlisted-fName-" + i));
                enlisted.setlName(request.getParameter("enlisted-lName-" + i));
                enlisted.setStudentId(request.getParameter("enlisted-StudentId-" + i));
                enlisted.setPhone(request.getParameter("enlisted-phone-" + i));
                enlisted.setEmail(request.getParameter("enlisted-email-" + i));
                enlisteds.add(enlisted);
                i++;
            }
            return enlisteds;
        }
        return null;
    }


    public List makeExpenses(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("expense-name-" + i) == null || request.getParameter("expense-name-" + i).equals(""))) {
                List expenses = new ArrayList<>();
                while (!(request.getParameter("expense-name-" + i) == null || request.getParameter("expense-name-" + i).equals(""))) {
                        Expense expense = new Expense();
                        expense.setName(request.getParameter("expense-name-" + i));
                        expense.setValue(request.getParameter("expense-value-" + i));
                        expense.setComment(request.getParameter("expense-comment-" + i));
                        expenses.add(expense);
                        i++;
                }
                return expenses;
        }
        return null;
    }


    public List makePersonnel(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("personnel-fName-" + i) == null || request.getParameter("personnel-fName-" + i).equals(""))) {
            List<Personnel> personnels = new ArrayList<>();
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


    public List makeGuests(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("guest-fName-" + i) == null || request.getParameter("guest-fName-" + i).equals(""))) {
            List guests = new ArrayList<>();
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


    public List makeJudges(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("judge-fName-" + i) == null || request.getParameter("judge-fName-" + i).equals(""))) {
            List judges = new ArrayList<>();
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

