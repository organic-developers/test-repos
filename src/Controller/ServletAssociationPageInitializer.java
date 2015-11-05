package Controller;


import Logic.AssociationDAO;
import Logic.PlanDAO;
import Logic.SuggestedPlanDAO;
import Logic.UserDAO;
import Models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletAssociationPageInitializer", urlPatterns = "/ServletAssociationPageInitializer")
public class ServletAssociationPageInitializer extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        try {

            int associationId = Integer.parseInt(request.getParameter("association").trim());

            AssociationDAO associationDAO = new AssociationDAO();

            request.setAttribute("association", associationDAO.getAssociationById(associationId));

            UserDAO userDAO = new UserDAO();
            List<User> users = userDAO.getAllActiveMembersByAssociationId(associationId);
            request.setAttribute("users", users);

            for (User user: users){
                System.out.println(user.getEmail());
            }

            SuggestedPlanDAO suggestedPlanDAO = new SuggestedPlanDAO();
            PlanDAO planDAO = new PlanDAO();

        request.setAttribute("registringPlans", planDAO.getRegistringPlansByAssociationId(associationId));
        request.setAttribute("executingPlans", planDAO.getExecutingPlansByAssociationId(associationId));
        request.setAttribute("finishedPlans", planDAO.getFinishedPlansByAssociationId(associationId));
//        request.setAttribute("futurePlans", planDAO.getFuturePlansByAssociationId(associationId));
        request.setAttribute("suggestedPlans", suggestedPlanDAO.getInViewSuggestedPlansByAssociationId(associationId));

            request.getRequestDispatcher("/association.jsp").forward(request, response);
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
