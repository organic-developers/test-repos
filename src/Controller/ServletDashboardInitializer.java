package Controller;

import Logic.PlanDAO;
import Models.Plan;
import Models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/**
 * Created by Amir on 8/13/2015.
 */
@WebServlet(name = "ServletDashboardInitializer")
public class ServletDashboardInitializer extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        PlanDAO planDAO = new PlanDAO();

        List<Plan> plans = null;

        User user = (User) request.getSession().getAttribute("currentUser");

        if (user.getAssociation().getId() == 8) {

            plans = planDAO.getAllPlans();
            Collections.reverse(plans);

        } else {
            plans = planDAO.getPlansByAssociationId(user.getAssociation().getId());
            Collections.reverse(plans);
        }

        request.setAttribute("plans", plans);

        int positionId = user.getPosition().getId();


        if (positionId == 4) {
            request.getRequestDispatcher("/app/dashboardClerk.jsp").forward(request, response);
        } else if (positionId == 1) {
            request.getRequestDispatcher("/app/dashboardBoss.jsp").forward(request, response);
        } else if (positionId == 2) {
            request.getRequestDispatcher("/app/dashboardExpert.jsp").forward(request, response);
        } else if (positionId == 3) {
            request.getRequestDispatcher("/app/dashboardAdvisor.jsp").forward(request, response);
        }

//        request.getRequestDispatcher("/app/dashboard-index.jsp").forward(request, response);
    }
}
