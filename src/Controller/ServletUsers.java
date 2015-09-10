package Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.List;

import Logic.UserDAO;
import Models.*;

import com.google.gson.Gson;

@WebServlet(name = "ServletUsers", urlPatterns = {"/ServletUsers"})
@MultipartConfig (location = "C:\\Users\\Saied\\IdeaProjects\\scientific-associations\\web\\uploaded-files", fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 *5)
public class ServletUsers extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));


        UserDAO userDAO = new UserDAO();
        if (ajax) {
            // Handle ajax (JSON) response.

            User user = userDAO.getUserById(Integer.parseInt(request.getParameter("id").trim()));

            String json = new Gson().toJson(user);

            response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
            response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
            response.getWriter().write(json);       // Write response body.

        } else {
            // Handle regular (JSP) response.
            if(request.getAttribute("initiated") != null && request.getAttribute("initiated").equals("menu")){

                fillTable(request, response, userDAO);
            } else if (request.getParameter("id") == null || request.getParameter("id").equals("")){
                User user = makeUser(request);

                try {
                    userDAO.addUser(user);
                } catch (Exception e) {
                    e.printStackTrace();
                    request.getRequestDispatcher("/app/failed.jsp").forward(request, response);
                }
                fillTable(request, response, userDAO);
            } else  {
                User user = makeUser(request);
                user.setId(Integer.parseInt(request.getParameter("id").trim()));
                userDAO.updateUser(user);
                fillTable(request, response, userDAO);
            }
        }
    }

    public void fillTable(HttpServletRequest request, HttpServletResponse response, UserDAO userDAO) throws ServletException, IOException{

        List users = userDAO.getAllUsers();
        for(int i = 0; i < users.size(); i++){
            System.out.println(((User) users.get(i)).getfName());
        }
        request.setAttribute("users", users);
        users = (List) request.getAttribute("users");
        for(int i = 0; i < users.size(); i++){
            System.out.println(((User) users.get(i)).getfName());
        }
        request.getRequestDispatcher("/app/users.jsp").forward(request, response);
    }

    public User makeUser(HttpServletRequest request) throws IOException, ServletException{
        User user = new User();
        user.setfName(request.getParameter("fName"));
        user.setlName(request.getParameter("lName"));
        user.setUserName(request.getParameter("userName"));
        user.setPassword(request.getParameter("password"));
        user.setAssociationNumber(Integer.parseInt(request.getParameter("associationNumber")));
        user.setBirthYear(request.getParameter("birthYear"));
        user.setPositionTitle(request.getParameter("positionTitle"));
        user.setEmail(request.getParameter("email"));
        user.setStudentId(request.getParameter("studentId"));
        user.setNationalId(request.getParameter("nationalId"));
        user.setPhone(request.getParameter("phone"));


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

