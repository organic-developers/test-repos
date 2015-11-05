package Controller;

import Logic.PlanDAO;
import Models.Enlisted;
import Models.Plan;
import Models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;


@WebServlet(name = "ServletEnterRegistrations", urlPatterns = "/ServletEnterRegistrations")
public class ServletEnterRegistrations extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        request.setCharacterEncoding("UTF-8");

        PlanDAO planDAO = new PlanDAO();

        Plan plan = planDAO.getCompletePlanById(Integer.parseInt(request.getParameter("id")));

        ServletPlanFields pf = new ServletPlanFields(request);
        plan.setEnlisted(pf.makeEnlisted());

        plan.setWorkflowState(planDAO.getWorkflowForward(plan.getId()));

        plan.getPlanStateHistories().add(planDAO.getPlanStateHistory((User) request.getSession().getAttribute("currentUser"), plan));

        plan.setSeen("false");

        planDAO.updatePlan(plan);

        request.getRequestDispatcher("../Controller/ServletDashboardInitializer").forward(request, response);
    }
}

