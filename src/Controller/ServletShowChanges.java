package Controller;

import Logic.PlanStateHistoryDAO;
import Models.PlanStateHistory;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "ServletShowChanges", urlPatterns = "/ServletShowChanges")
public class ServletShowChanges extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        PlanStateHistoryDAO planStateHistoryDAO = new PlanStateHistoryDAO();
        PlanStateHistory planStateHistory = planStateHistoryDAO.getPlanStateHistoryById(Integer.parseInt(request.getParameter("id").trim()));

        String json = new Gson().toJson(planStateHistory.getChanges());

        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);       // Write response body.
    }
}
