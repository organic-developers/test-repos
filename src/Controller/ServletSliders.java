package Controller;

import Logic.SliderDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Saied on 9/21/2015.
 */
public class ServletSliders extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        SliderDAO sliderDAO = new SliderDAO();

        List sliders = sliderDAO.getAllSliders();

        request.setAttribute("sliders", sliders);

        request.getRequestDispatcher("/app/slider-management.jsp").forward(request, response);
    }
}
