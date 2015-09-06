package Controller;

import Logic.PlanDAO;
import Logic.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * This is Created by Amir on 09/02/2015.
 */
@WebServlet(name = "ServletReport")
public class ServletReport extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        PlanDAO planDAO = new PlanDAO();
        UserDAO userDAO = new UserDAO();
        request.setAttribute("allPlan",planDAO.getAllPlans());
        request.setAttribute("allUser",userDAO.getAllUsers());
        request.getRequestDispatcher("/app/report.jsp").include(request,response);
    }
}
