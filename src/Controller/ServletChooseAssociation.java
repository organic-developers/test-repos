package Controller;

import Logic.AssociationDAO;
import Logic.PlanDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Saied on 9/21/2015.
 */
public class ServletChooseAssociation extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        AssociationDAO associationDAO = new AssociationDAO();

        List associations = associationDAO.getAllAssociations();

        request.setAttribute("associations", associations);

        PlanDAO planDAO = new PlanDAO();

//        List plans = planDAO.getAdvertisingPlans();
//        request.setAttribute("plans", plans);

        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
