package Controller;

import Logic.AssociationDAO;
import Models.Association;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet(name = "ServletEditAssociationInitializer", urlPatterns = "/ServletEditAssociationInitializer")
public class ServletEditAssociationInitializer extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.setCharacterEncoding("UTF-8");

        AssociationDAO associationDAO = new AssociationDAO();

        Association association = associationDAO.getAssociationById(Integer.parseInt(request.getParameter("id").trim()));

        request.setAttribute("association", association);

        request.getRequestDispatcher("/app/editAssociation.jsp").forward(request, response);
    }
}
