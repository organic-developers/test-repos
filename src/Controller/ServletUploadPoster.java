package Controller;

import Logic.PlanDAO;
import Models.Plan;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;


@MultipartConfig(location = "C:\\Users\\Saied\\IdeaProjects\\scientific-associations\\web\\uploaded-files",
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
        Plan plan = planDAO.getPlanById(Integer.parseInt(request.getParameter("id")));

        try {
            Part poster = request.getPart("poster");
            poster.write(poster.getSubmittedFileName());
            plan.setPoster("/uploaded-files/" + poster.getSubmittedFileName());
        } catch (Exception e) {
            e.printStackTrace();
        }

        plan.setRegistrationBeginDate(request.getParameter("registrationBeginDate"));
        plan.setRegistrationEndDate(request.getParameter("registrationEndDate"));
        plan.setAdvertisementBeginDate(request.getParameter("advertisementBeginDate"));
        plan.setAdvertisementEndDate(request.getParameter("advertisementEndDate"));

        planDAO.updatePlan(plan);

        planDAO.workflowForward(plan.getId());

        request.getRequestDispatcher("../Controller/ServletDashboardInitializer").forward(request, response);
    }
}
