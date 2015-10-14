package Controller;

import Logic.PlanDAO;
import Models.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "ServletAdvisorConfirmPlan", urlPatterns = {"/ServletAdvisorConfirmPlan"})
public class ServletAdvisorConfirmPlan extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        PlanDAO planDAO = new PlanDAO();
        Plan plan = planDAO.getCompletePlanById(Integer.parseInt(request.getParameter("id")));
        plan.setAdvisorComment(request.getParameter("advisorComment"));

        if(request.getParameter("submit").equals("confirm")){
            plan.setWorkflowState(planDAO.getWorkflowForward(plan.getId()));
        } else {
            plan.setWorkflowState(planDAO.getWorkflowRejected(plan.getId()));
        }

        plan.setSeen("false");

        plan.getPlanStateHistories().add(planDAO.getPlanStateHistory((User) request.getSession().getAttribute("currentUser"), plan));

        planDAO.updatePlan(plan);

        request.getRequestDispatcher("../Controller/ServletDashboardInitializer").forward(request, response);

    }

}
