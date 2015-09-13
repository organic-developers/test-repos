package Controller;

import Logic.AssociationDAO;
import Models.Association;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;

@MultipartConfig(location = "C:\\Users\\Saied\\IdeaProjects\\scientific-associations\\web\\uploaded-files", fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
@WebServlet(name = "ServletCreateAssociation", urlPatterns = "/ServletCreateAssociation")
public class ServletCreateAssociation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        AssociationDAO associationDAO = new AssociationDAO();

        Association association = new Association();

        association.setName(request.getParameter("name"));

        Part logo = request.getPart("logo");
        logo.write(logo.getSubmittedFileName());
        association.setLogo("/uploaded-files/" + logo.getSubmittedFileName());

        association.setActive("active");

        associationDAO.addAssociation(association);

        request.getRequestDispatcher("../Controller/ServletAssociationsManagement").forward(request, response);
    }
}
