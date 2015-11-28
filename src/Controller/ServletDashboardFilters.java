package Controller;

import Logic.AssociationDAO;
import Logic.PlanDAO;
import Logic.WorkflowDAO;
import Models.Plan;
import Models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

/**
 * Created by Saied on 11/9/2015.
 */
@WebServlet(name = "ServletDashboardFilters")
public class ServletDashboardFilters extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        try{

            PlanDAO planDAO = new PlanDAO();
            AssociationDAO associationDAO = new AssociationDAO();
            WorkflowDAO workflowDAO = new WorkflowDAO();

            List<Plan> plans;
            if (request.getParameter("association").trim().equals("1000") && request.getParameter("workflow").trim().equals("1000")) {

                plans = planDAO.getAllPlans();

            }else if(request.getParameter("workflow").trim().equals("1000")){

                plans = planDAO.getPlansByAssociationId(Integer.parseInt(request.getParameter("association").trim()));

            } else if (request.getParameter("association").trim().equals("1000")){

                plans = planDAO.getPlansByWorkflowId(Integer.parseInt(request.getParameter("workflow").trim()));

            } else {

                plans = planDAO.getPlansByAssociationAndWorkflow(
                        Integer.parseInt(request.getParameter("association").trim()),
                        Integer.parseInt(request.getParameter("workflow").trim()));
            }


            Collections.reverse(plans);

            List associations = associationDAO.getAllAssociations();

            List workflows = workflowDAO.getAllWorkflows();

            request.setAttribute("associations", associations);
            request.setAttribute("workflows", workflows);
            request.setAttribute("plans", plans);
        } catch (Exception e){
            e.printStackTrace();
        }

        request.getRequestDispatcher("/app/dashboardBoss.jsp").forward(request, response);
    }
}

