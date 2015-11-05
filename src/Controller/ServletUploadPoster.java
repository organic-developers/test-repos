package Controller;

import Logic.Address;
import Logic.PlanDAO;
import Models.Plan;
import Models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@MultipartConfig(location = Address.PLANS_AB,
        maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5, fileSizeThreshold = 1024 * 1024)
@WebServlet(name = "ServletUploadPoster", urlPatterns = {"/ServletUploadPoster"})
public class ServletUploadPoster extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        PlanDAO planDAO = new PlanDAO();
        Plan plan = planDAO.getCompletePlanById(Integer.parseInt(request.getParameter("id")));

        ServletPlanFields pf = new ServletPlanFields(request);
        plan.setPoster(pf.getPoster());

        plan.setRegistrationBeginDate(request.getParameter("registrationBeginDate"));
        plan.setRegistrationEndDate(request.getParameter("registrationEndDate"));
        plan.setAdvertisementBeginDate(request.getParameter("advertisementBeginDate"));
        plan.setAdvertisementEndDate(request.getParameter("advertisementEndDate"));
        plan.setRegistrationFee(request.getParameter("registrationFee"));
        plan.setRegistrationPlace(request.getParameter("registrationPlace"));

        plan.setWorkflowState(planDAO.getWorkflowForward(plan.getId()));

        plan.getPlanStateHistories().add(planDAO.getPlanStateHistory((User) request.getSession().getAttribute("currentUser"), plan));

        plan.setSeen("false");

        planDAO.updatePlan(plan);

        request.getRequestDispatcher("../Controller/ServletDashboardInitializer").forward(request, response);
    }
}
