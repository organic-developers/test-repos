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

        User user = (User) request.getSession().getAttribute("user");

        if(user.getAssociationNumber() == 100){
            plans = planDAO.getAllPlans();
        } else {
            plans = planDAO.getPlansByAssociationNumber(user.getAssociationNumber());
        }

        System.out.println(user.getAssociationNumber());

        request.setAttribute("plans", plans);

        String positionTitle = user.getPositionTitle().trim();

        if (positionTitle.equals("clerk")) {
            request.getRequestDispatcher("/app/dashboardClerk.jsp").forward(request, response);
        } else if (positionTitle.equals("boss")) {
            request.getRequestDispatcher("/app/dashboardBoss.jsp").forward(request, response);
        } else if (positionTitle.equals("expert")) {
            request.getRequestDispatcher("/app/dashboardExpert.jsp").forward(request, response);
        } else if (positionTitle.equals("advisor")) {
            request.getRequestDispatcher("/app/dashboardAdvisor.jsp").forward(request, response);
        }

//        request.getRequestDispatcher("/app/dashboard-index.jsp").forward(request, response);
    }
}
