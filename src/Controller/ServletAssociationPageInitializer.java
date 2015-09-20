package Controller;


import Logic.AssociationDAO;
import Logic.PlanDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletAssociationPageInitializer", urlPatterns = "/ServletAssociationPageInitializer")
public class ServletAssociationPageInitializer extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        int id = Integer.parseInt(request.getParameter("id").trim());

        AssociationDAO associationDAO = new AssociationDAO();

        request.setAttribute("association", associationDAO.getAssociationById(id));

        PlanDAO planDAO = new PlanDAO();

        request.setAttribute("registringPlans", planDAO.getRegistringPlansByAssociationId(id));
        request.setAttribute("finishedPlans", planDAO.getFinishedPlansByAssociationId(id));
        request.setAttribute("futurePlans", planDAO.getFuturePlansByAssociationId(id));
        request.setAttribute("suggestedPlans", planDAO.getSuggestedPlansByAssociationId(id));

        request.getRequestDispatcher("/association.jsp").forward(request, response);
    }
}
