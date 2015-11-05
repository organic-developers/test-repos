package Controller;

import Logic.Address;
import Logic.SliderDAO;
import Models.Slider;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.List;

/**
 * Created by Saied on 10/31/2015.
 */

@MultipartConfig(location = Address.SLIDER_AB, fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
@WebServlet(name = "ServletSliderManagement", urlPatterns = "/ServletSliderManagement")
public class ServletSliderManagement extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        request.setCharacterEncoding("UTF-8");

        SliderDAO sliderDAO = new SliderDAO();

        boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));

        if (ajax) {

            String method = request.getParameter("method");

            if (method.equals("methodA")) {

                Slider slider = new Slider();
                slider.setComment(request.getParameter("comment"));

                Part part = request.getPart("slider");
                String path = part.getSubmittedFileName();
                part.write(path);
                slider.setPath(Address.SLIDER_RE + part.getSubmittedFileName());

                sliderDAO.addSlider(slider);

                slider.setId(1);

                String json = new Gson().toJson(slider);

                response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
                response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
                response.getWriter().write(json);       // Write response body.

            } else if (method.equals("methodB")) {
                Slider slider = sliderDAO.getSlidersById(Integer.parseInt(request.getParameter("id").trim()));
                sliderDAO.deleteSlider(slider);

            } else {
//                throw new IllegalArgumentExcpetion("'method' parameter required, must be 'methodA' or 'methodB' !");
            }

        } else {
            List sliders = sliderDAO.getAllSliders();

            request.setAttribute("sliders", sliders);

            request.getRequestDispatcher("/app/slider-management.jsp").forward(request, response);
        }
    }
}
