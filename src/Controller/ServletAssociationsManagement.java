package Controller;


import Logic.AssociationDAO;
import Models.Association;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletAssociationsManagement", urlPatterns = "/ServletAssociationsManagement")
public class ServletAssociationsManagement extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        request.setCharacterEncoding("UTF-8");

        AssociationDAO associationDAO = new AssociationDAO();

        boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));

        if (ajax) {
            // Handle ajax (JSON) response.


        } else {
            // Handle regular (JSP) response.

            List<Association> associations = associationDAO.getAllAssociations();

            request.setAttribute("associations", associations);
            request.getRequestDispatcher("../app/associations-management.jsp").forward(request, response);
        }
    }
}
