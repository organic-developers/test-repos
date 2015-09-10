package Controller;

import Logic.PlanDAO;
import Models.Plan;

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

        Plan plan = planDAO.getPlanById(Integer.parseInt(request.getParameter("id")));

        plan.setBossComment(request.getParameter("bossComment"));

        planDAO.updatePlan(plan);

        if(request.getParameter("submit").equals("confirm")){
            planDAO.workflowForward(plan.getId());
        } else if (request.getParameter("submit").equals("correct")){
            planDAO.workflowToBeCorrected(plan.getId());
        } else {
            planDAO.workflowRejected(plan.getId());
        }

        request.getRequestDispatcher("../Controller/ServletDashboardInitializer").forward(request, response);
    }
}
