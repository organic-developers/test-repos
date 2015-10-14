package Controller;

import Logic.PlanDAO;
import Models.Plan;
import Models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "ServletBossConfirmPoster", urlPatterns = {"/ServletBossConfirmPoster"})
public class ServletBossConfirmPoster extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        PlanDAO planDAO = new PlanDAO();

        Plan plan = planDAO.getCompletePlanById(Integer.parseInt(request.getParameter("id")));

        plan.setBossComment(request.getParameter("bossComment"));

        plan.setRegistrationBeginDate(request.getParameter("registrationBeginDate"));
        plan.setRegistrationEndDate(request.getParameter("registrationEndDate"));
        plan.setAdvertisementBeginDate(request.getParameter("advertisementBeginDate"));
        plan.setAdvertisementEndDate(request.getParameter("advertisementEndDate"));
        plan.setRegistrationFee(request.getParameter("registrationFee"));
        plan.setRegistrationPlace(request.getParameter("registrationPlace"));

        if(request.getParameter("submit").equals("confirm")){
            plan.setWorkflowState(planDAO.getWorkflowForward(plan.getId()));
        } else if (request.getParameter("submit").equals("correct")){
            plan.setWorkflowState(planDAO.getWorkflowToBeCorrected(plan.getId()));
        } else {
            plan.setWorkflowState(planDAO.getWorkflowRejected(plan.getId()));
        }

        plan.getPlanStateHistories().add(planDAO.getPlanStateHistory((User) request.getSession().getAttribute("currentUser"), plan));

        plan.setSeen("false");

        planDAO.updatePlan(plan);

        request.getRequestDispatcher("../Controller/ServletDashboardInitializer").forward(request, response);
    }
}
