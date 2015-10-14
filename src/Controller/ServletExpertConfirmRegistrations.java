package Controller;

import Logic.PlanDAO;
import Logic.TableMaker;
import Models.Plan;
import Models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "ServletExpertConfirmRegistrations", urlPatterns = "/ServletExpertConfirmRegistrations")
public class ServletExpertConfirmRegistrations extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        PlanDAO planDAO = new PlanDAO();

        Plan plan = planDAO.getCompletePlanById(Integer.parseInt(request.getParameter("id")));

        plan.setEnlisted(new TableMaker().makeEnlisted(request));

        plan.setExpertComment(request.getParameter("expertComment"));

        plan.setWorkflowState(planDAO.getWorkflowForward(plan.getId()));

        plan.getPlanStateHistories().add(planDAO.getPlanStateHistory((User) request.getSession().getAttribute("currentUser"), plan));

        plan.setSeen("false");

        planDAO.updatePlan(plan);

        request.getRequestDispatcher("../Controller/ServletDashboardInitializer").forward(request, response);
    }
}
