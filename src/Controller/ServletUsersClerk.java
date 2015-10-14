package Controller;

import Logic.AssociationDAO;
import Logic.PositionDAO;
import Logic.UserDAO;
import Models.Association;
import Models.User;
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



@WebServlet(name = "ServletUsersClerk", urlPatterns = {"/ServletUsersClerk"})
@MultipartConfig(location = "C:\\Users\\Saied\\IdeaProjects\\scientific-associations\\web\\uploaded-files", fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 *5)
public class ServletUsersClerk extends HttpServlet {

    UserDAO userDAO = new UserDAO();
    AssociationDAO associationDAO = new AssociationDAO();
    PositionDAO positionDAO = new PositionDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));

        if (ajax) {
            // Handle ajax (JSON) response.

                User user = userDAO.getUserById(Integer.parseInt(request.getParameter("id").trim()));

                user.getAssociation().setUsers(null);
                user.getAssociation().setPlans(null);

                String json = new Gson().toJson(user);

                response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
                response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
                response.getWriter().write(json);       // Write response body.

        } else {
            // Handle regular (JSP) response.

            if (request.getParameter("id") == null || request.getParameter("id").equals("")) {
                User user = makeUser(request);

                try {
                    userDAO.addUser(user);
                } catch (Exception e) {
                    e.printStackTrace();
                    request.getRequestDispatcher("/app/failed.jsp").forward(request, response);
                }
                request.getRequestDispatcher("/Controller/ServletUsersClerkInitialize").forward(request, response);
            } else {
                User user = makeUser(request);
                user.setId(Integer.parseInt(request.getParameter("id").trim()));
                userDAO.updateUser(user);
                request.getRequestDispatcher("/Controller/ServletUsersClerkInitialize").forward(request, response);

            }
        }
    }

    public User makeUser(HttpServletRequest request) throws IOException, ServletException{
        User user = new User();
        user.setfName(request.getParameter("fName"));
        user.setlName(request.getParameter("lName"));
        user.setBirthYear(request.getParameter("birthYear"));
        user.setEmail(request.getParameter("email"));
        user.setStudentId(request.getParameter("studentId"));
        user.setNationalId(request.getParameter("nationalId"));
        user.setPhone(request.getParameter("phone"));
        user.setActive("true");

        user.setPosition(positionDAO.getPositionById(Integer.parseInt(request.getParameter("positionTitle").trim())));

        user.setAssociation(((User) request.getSession().getAttribute("currentUser")).getAssociation());

        try{
            String directory = "/uploaded-files/";
            Part photo = request.getPart("photo");
            if (photo != null) {
                photo.write(photo.getSubmittedFileName());
                user.setPhoto(directory + photo.getSubmittedFileName());
            }
        } catch (Exception e){
            user.setPhoto(request.getParameter("image2"));
        }

        return user;
    }
}

