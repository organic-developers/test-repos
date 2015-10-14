package Controller;

import Logic.PlanStateHistoryDAO;
import Logic.PlanDAO;
import Models.PlanStateHistory;
import Models.Plan;
import Models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;


@WebServlet(name = "ServletDashboardSwitch")
public class ServletDashboardSwitch extends HttpServlet {
    Plan plan;
    PlanDAO planDAO;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       try {
           request.setCharacterEncoding("UTF-8");
           planDAO = new PlanDAO();
           plan = planDAO.getCompletePlanById(Integer.parseInt(request.getParameter("id").trim()));
           switch (plan.getWorkflowState().getId()) {
               case 1:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/AdvisorConfirmPlan.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
               case 2:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/expertConfirmPlan.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
               case 3:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/bossConfirmPlan.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
               case 4:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/uploadPoster.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
               case 5:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/expertConfirmPoster.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
               case 6:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/bossConfirmPoster.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
               case 7:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/enterRegistrations.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
               case 8:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/expertConfirmRegistrations.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
               case 9:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/bossConfirmRegistrations.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
               case 10:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/planTrip.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
               case 15:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/create-plan-trip.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
               case 11:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/correctPlan.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
               case 12:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/correctPoster.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
               case 13:
                   request.setAttribute("plan", plan);
                   request.getRequestDispatcher("../app/correctRegistrations.jsp").forward(request, response);
                   planStateHistoryObserve(request);
                   break;
           }
       } catch (Exception e){
           e.printStackTrace();
       }
    }

    public void planStateHistoryObserve(HttpServletRequest request){
        if(plan.getSeen().equals("false")){
            User currentUser = (User)request.getSession().getAttribute("currentUser");
            PlanStateHistoryDAO planStateHistoryDAO = new PlanStateHistoryDAO();
            PlanStateHistory PlanStateHistory = planStateHistoryDAO.getObserveEvent(currentUser);
            plan.getPlanStateHistories().add(PlanStateHistory);
            plan.setSeen("true");
            planDAO.updatePlan(plan);
        }
    }
}
