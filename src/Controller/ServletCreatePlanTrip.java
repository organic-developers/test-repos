package Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import Logic.*;
import Models.*;


@WebServlet(name = "ServletCreatePlanTrip", urlPatterns = {"/ServletCreatePlanTrip"})
@MultipartConfig(location = Address.PLANS_AB, fileSizeThreshold = 1024 * 1024,
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

        ServletPlanFields pf = new ServletPlanFields(request);

        plan.setAttachment(pf.getAttachment());
        plan.setAttachment(pf.getGuidelines());
        plan.setAttachment(pf.getResume());
        plan.setAttachment(pf.getPoster());

        plan.setEnlisted(pf.makeEnlisted());
        plan.setExpenses(pf.makeExpenses());
        plan.setPersonnel(pf.makePersonnel());
        plan.setGuests(pf.makeGuests());
        plan.setJudges(pf.makeJudges());


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
            case "2":
                plan.setWorkflow(workflowDAO.getWorkflowById(Integer.parseInt(request.getParameter("type").trim())));
                if (request.getParameter("submit").equals("tentative")) {
                    plan.setWorkflowState(workflowStateDAO.getWorkflowStateById(48));
                } else if (request.getParameter("submit").equals("send")) {
                    plan.setWorkflowState(workflowStateDAO.getWorkflowStateById(30));
                }
                break;
            case "3":
                plan.setWorkflow(workflowDAO.getWorkflowById(Integer.parseInt(request.getParameter("type").trim())));
                if (request.getParameter("submit").equals("tentative")) {
                    plan.setWorkflowState(workflowStateDAO.getWorkflowStateById(69));
                } else if (request.getParameter("submit").equals("send")) {
                    plan.setWorkflowState(workflowStateDAO.getWorkflowStateById(60));
                }
//                break;
//            case "4":
//                plan.setWorkflow(workflowDAO.getWorkflowById(Integer.parseInt(request.getParameter("type").trim())));
//                if (request.getParameter("submit").equals("tentative")) {
//                    plan.setWorkflowState(workflowStateDAO.getWorkflowStateById(69));
//                } else if (request.getParameter("submit").equals("send")) {
//                    plan.setWorkflowState(workflowStateDAO.getWorkflowStateById(60));
//                }
//                break;
//            case "5":
//                plan.setWorkflow(workflowDAO.getWorkflowById(Integer.parseInt(request.getParameter("type").trim())));
//                if (request.getParameter("submit").equals("tentative")) {
//                    plan.setWorkflowState(workflowStateDAO.getWorkflowStateById(69));
//                } else if (request.getParameter("submit").equals("send")) {
//                    plan.setWorkflowState(workflowStateDAO.getWorkflowStateById(60));
//                }
//                break;
//            case "6":
//                plan.setWorkflow(workflowDAO.getWorkflowById(Integer.parseInt(request.getParameter("type").trim())));
//                if (request.getParameter("submit").equals("tentative")) {
//                    plan.setWorkflowState(workflowStateDAO.getWorkflowStateById(69));
//                } else if (request.getParameter("submit").equals("send")) {
//                    plan.setWorkflowState(workflowStateDAO.getWorkflowStateById(60));
//                }
//                break;
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
}

