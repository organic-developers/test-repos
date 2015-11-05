package Controller;

import Logic.PlanDAO;
import Models.Plan;
import Models.Workflow;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Saied on 10/10/2015.
 */
public class ServletShowPlanDetails extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            request.setCharacterEncoding("UTF-8");

            PlanDAO planDAO = new PlanDAO();

            Plan plan = planDAO.getPlanById(Integer.parseInt(request.getParameter("id").trim()));

            plan.setAssociation(null);
            plan.setEnlisted(null);
            plan.setExpenses(null);
            plan.setGuests(null);
            plan.setJudges(null);
            plan.setPersonnel(null);
            plan.setPlanStateHistories(null);
            plan.setWorkflowState(null);
            Workflow workflow = new Workflow();
            switch (plan.getWorkflow().getId()){
                case 1:
                    workflow.setId(1);
                    break;
                case 2:
                    workflow.setId(2);
                    break;
                case 3:
                    workflow.setId(3);
                    break;
                case 4:
                    workflow.setId(4);
                    break;
                case 5:
                    workflow.setId(5);
                    break;
                case 6:
                    workflow.setId(6);
                    break;
                case 7:
                    workflow.setId(7);
                    break;
            }
            plan.setWorkflow(workflow);

            String json = new Gson().toJson(plan);
            System.out.println(json);

            response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
            response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
            response.getWriter().write(json);       // Write response body.
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
