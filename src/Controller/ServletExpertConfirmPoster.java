package Controller;


import Logic.PlanDAO;
import Models.Plan;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletExpertConfirmPoster", urlPatterns = {"/ServletExpertConfirmPoster"})
public class ServletExpertConfirmPoster extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        PlanDAO planDAO = new PlanDAO();

        Plan plan = planDAO.getPlanById(Integer.parseInt(request.getParameter("id")));

        plan.setExpertComment(request.getParameter("expertComment"));

        plan.setRegistrationBeginDate(request.getParameter("registrationBeginDate"));
        plan.setRegistrationEndDate(request.getParameter("registrationEndDate"));
        plan.setAdvertisementBeginDate(request.getParameter("advertisementBeginDate"));
        plan.setAdvertisementEndDate(request.getParameter("advertisementEndDate"));

        planDAO.updatePlan(plan);

        planDAO.workflowForward(plan.getId());

        request.getRequestDispatcher("../Controller/ServletDashboardInitializer").forward(request, response);
    }
}
