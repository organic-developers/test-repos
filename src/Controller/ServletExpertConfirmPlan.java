package Controller;

import Logic.PlanDAO;
import Logic.PlanStateHistoryDAO;
import Models.*;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;


@WebServlet(name = "ServletExpertConfirmPlan", urlPatterns = {"/ServletExpertConfirmPlan"})
public class ServletExpertConfirmPlan extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        PlanDAO planDAO = new PlanDAO();
        Plan plan = planDAO.getCompletePlanById(Integer.parseInt(request.getParameter("id")));

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
        plan.setStudentMoney(request.getParameter("studentMoney"));
        plan.setSponsorMoney(request.getParameter("sponsorMoney"));
        plan.setOtherIncome(request.getParameter("otherIncome"));

        plan.setExpertComment(request.getParameter("expertComment"));

        ServletPlanFields pf = new ServletPlanFields(request);

        plan.setPersonnel(pf.makePersonnel());
        plan.setExpenses(pf.makeExpenses());

        try {
            plan.setWorkflowState(planDAO.getWorkflowForward(plan.getId()));
        } catch (Exception e) {
            e.printStackTrace();
        }

        plan.setSeen("false");

        plan.getPlanStateHistories().add(planDAO.getPlanStateHistory((User) request.getSession().getAttribute("currentUser"), plan));

        planDAO.updatePlan(plan);

        request.getRequestDispatcher("../Controller/ServletDashboardInitializer").forward(request, response);
    }
}
