package Controller;

import Logic.AssociationDAO;
import Logic.PlanDAO;
import Logic.SliderDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Amir on 8/13/2015.
 */
@WebServlet(name = "ServletIndex")
public class ServletIndex extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        AssociationDAO associationDAO = new AssociationDAO();

        List associations = associationDAO.getAllAssociations();

        request.setAttribute("associations", associations);

        SliderDAO sliderDAO = new SliderDAO();

        List sliders = sliderDAO.getAllSliders();
        request.setAttribute("sliders", sliders);

        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
