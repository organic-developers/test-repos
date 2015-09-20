package Controller;

import Logic.ResourceDAO;
import Models.Resource;
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

@MultipartConfig(location = "C:\\Users\\Saied\\IdeaProjects\\scientific-associations\\web\\resources", fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
@WebServlet(name = "ServletResourceManagement", urlPatterns = "ServletResourceManagement")
public class ServletResourceManagement extends HttpServlet {

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

        boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));

        if (ajax) {

            String method = request.getParameter("method");

            if (method.equals("methodA")) {

                Resource resource = new Resource();
                resource.setName(request.getParameter("name"));

                Part part = request.getPart("resource");
                String path = part.getSubmittedFileName();
                part.write(path);
                resource.setPath("/resources/" + part.getSubmittedFileName());

                resourceDAO.addResourse(resource);

                resource.setId(1);

                String json = new Gson().toJson(resource);

                response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
                response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
                response.getWriter().write(json);       // Write response body.

            } else if (method.equals("methodB")) {
                Resource resource = resourceDAO.getResourceById(Integer.parseInt(request.getParameter("id").trim()));
                resourceDAO.deleteResource(resource);

            } else {
//                throw new IllegalArgumentExcpetion("'method' parameter required, must be 'methodA' or 'methodB' !");
            }

        } else {
            List resources = resourceDAO.getAllResources();

            request.setAttribute("resources", resources);

            request.getRequestDispatcher("/app/resource-management.jsp").forward(request, response);
        }
    }

}
