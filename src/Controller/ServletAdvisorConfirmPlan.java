package Controller;

import Logic.PlanDAO;
import Logic.WorkflowStateDAO;
import Models.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.HashSet;


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
        Plan plan = planDAO.getPlanById(Integer.parseInt(request.getParameter("id")));
        plan.setAdvisorComment(request.getParameter("advisorComment"));
        planDAO.updatePlan(plan);

        if(request.getParameter("submit").equals("confirm")){
                planDAO.workflowForward(plan.getId());
        } else {
            planDAO.workflowRejected(plan.getId());
        }

        request.getRequestDispatcher("../Controller/ServletDashboardInitializer").forward(request, response);

    }

}
