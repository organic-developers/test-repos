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


@WebServlet(name = "ServletDashboardSwitch")
public class ServletDashboardSwitch extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        PlanDAO planDAO = new PlanDAO();
        Plan plan = planDAO.getPlanById(Integer.parseInt(request.getParameter("id")));
        switch (plan.getWorkflowState().getId()) {
            case 1:
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("../app/AdvisorConfirmPlan.jsp").forward(request, response);
                break;
            case 2:
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("../app/expertConfirmPlan.jsp").forward(request, response);
                break;
            case 3:
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("../app/bossConfirmPlan.jsp").forward(request, response);
                break;
            case 4:
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("../app/uploadSupervisorAgreement.jsp").forward(request, response);
                break;
            case 15:
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("../app/uploadPoster.jsp").forward(request, response);
                break;
            case 5:
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("../app/expertConfirmPoster.jsp").forward(request, response);
                break;
            case 6:
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("../app/bossConfirmPoster.jsp").forward(request, response);
                break;
            case 7:
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("../app/enterRegistrations.jsp").forward(request, response);
                break;
            case 8:
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("../app/expertConfirmRegistrations.jsp").forward(request, response);
                break;
            case 9:
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("../app/bossConfirmRegistrations.jsp").forward(request, response);
                break;
            case 10:
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("../app/planTrip.jsp").forward(request, response);
                break;
        }
    }
}