package Controller;

import Logic.Address;
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



@MultipartConfig(location = Address.ASSOCIATIONS_AB, maxFileSize = 1024 * 1024 * 5 ,
        maxRequestSize = 1024 * 1024 * 5 * 5, fileSizeThreshold = 1024 * 1024)
@WebServlet(name = "ServletEditAssociation", urlPatterns = "/ServletEditAssociation")
public class ServletEditAssociation extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.setCharacterEncoding("UTF-8");

        AssociationDAO associationDAO = new AssociationDAO();

        Association association = associationDAO.getAssociationById(Integer.parseInt(request.getParameter("id").trim()));

        association.setName(request.getParameter("name"));
        association.setNumber(request.getParameter("number"));

        try {
            Part logo = request.getPart("logo");
            logo.write(logo.getSubmittedFileName());
            association.setLogo(Address.ASSOCIATIONS_RE + logo.getSubmittedFileName());
        } catch (Exception e){
            e.printStackTrace();
        }

        associationDAO.updateAssociation(association);

        request.getRequestDispatcher("ServletAssociationsManagement").forward(request, response);
    }
}
