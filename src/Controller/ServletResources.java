package Controller;

import Logic.ResourceDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet
public class ServletResources extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        request.setCharacterEncoding("UTF-8");

        ResourceDAO resourceDAO = new ResourceDAO();

        List resources = resourceDAO.getAllResources();

        request.setAttribute("resources", resources);

        request.getRequestDispatcher("/app/resources.jsp").forward(request, response);
    }
}
