package Controller;

import Logic.AssociationDAO;
import Logic.PlanDAO;
import Logic.SuggestedPlanDAO;
import Models.SuggestedPlan;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "ServletAssociationPage", urlPatterns = "/ServletAssociationPage")
public class ServletAssociationPage extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        SuggestedPlanDAO suggestedPlanDAO = new SuggestedPlanDAO();

        boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));

        if(ajax){

            String method = request.getParameter("method");

            if(method.equals("methodA")){

                AssociationDAO associationDAO = new AssociationDAO();

                SuggestedPlan suggestedPlan = new SuggestedPlan();

                suggestedPlan.setTitle(request.getParameter("title"));
                suggestedPlan.setDescription(request.getParameter("description"));
                suggestedPlan.setAssociation(associationDAO.getAssociationById(Integer.parseInt(request.getParameter("associationId"))));
                suggestedPlan.setInView("false");

                suggestedPlanDAO.addSuggestedPlan(suggestedPlan);

            } else if(method.equals("methodB")){
                int likeNumber = suggestedPlanDAO.addLikeNumber(Integer.parseInt(request.getParameter("id").trim()));

                String json = new Gson().toJson(likeNumber + "");

                response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
                response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
                response.getWriter().write(json);       // Write response body.
            }

        } else {

        }
    }
}
