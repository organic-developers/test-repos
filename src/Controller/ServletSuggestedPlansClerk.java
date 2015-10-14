package Controller;

import Logic.AssociationDAO;
import Logic.SuggestedPlanDAO;
import Models.SuggestedPlan;
import Models.User;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Saied on 9/23/2015.
 */
public class ServletSuggestedPlansClerk extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SuggestedPlanDAO suggestedPlanDAO = new SuggestedPlanDAO();

        boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));

        if (ajax) {

            String method = request.getParameter("method");
            if (method.equals("methodA")) {
                int associationId = (Integer.parseInt(request.getParameter("associationId").trim()));

                List suggestedPlans = suggestedPlanDAO.getSuggestedPlansByAssociationId(associationId);

                String json = new Gson().toJson(suggestedPlans);

                response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
                response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
                response.getWriter().write(json);       // Write response body.
            } else if (method.equals("methodB")) {
                int id = Integer.parseInt(request.getParameter("id").trim());
                suggestedPlanDAO.deleteSuggestedPlanById(id);
            } else if (method.equals("methodC")) {
                int id = Integer.parseInt(request.getParameter("id").trim());
                SuggestedPlan suggestedPlan = suggestedPlanDAO.getSuggestedPlanById(id);
                suggestedPlan.setInView("true");
                suggestedPlanDAO.updateSuggestedPlan(suggestedPlan);
            }
        } else {

            int associationId = ((User) request.getSession().getAttribute("currentUser")).getAssociation().getId();
            request.setAttribute("suggestedPlans", suggestedPlanDAO.getSuggestedPlansByAssociationId(associationId));

            request.getRequestDispatcher("/app/suggested-plans-clerk.jsp").forward(request, response);
        }
    }
}

