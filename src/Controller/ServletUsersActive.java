package Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;

import Logic.Address;
import Logic.AssociationDAO;
import Logic.PositionDAO;
import Logic.UserDAO;
import Models.*;

import com.google.gson.Gson;

@WebServlet(name = "ServletUsersActive", urlPatterns = {"/ServletUsersActive"})
@MultipartConfig (location =  Address.MEMBERS_AB, fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 *5)
public class ServletUsersActive extends HttpServlet {

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

            String method = request.getParameter("method");

            if("methodA".equals(method)){

                User user = userDAO.getUserById(Integer.parseInt(request.getParameter("id").trim()));

                user.getAssociation().setUsers(null);
                user.getAssociation().setPlans(null);

                String json = new Gson().toJson(user);

                response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
                response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
                response.getWriter().write(json);       // Write response body.

            } else if("methodB".equals(method)){
                try {
                    userDAO.deactiveAllActiveMembers();
                } catch (Exception e){
                    e.printStackTrace();
                }
                System.out.println("working");
            }


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
                    request.getRequestDispatcher("/Controller/ServletUsersActiveInitialize").forward(request, response);

                } else {
                    User user = makeUser(request);
                    user.setId(Integer.parseInt(request.getParameter("id").trim()));
                    userDAO.updateUser(user);
                    request.getRequestDispatcher("/Controller/ServletUsersActiveInitialize").forward(request, response);
                }
        }
    }

    public User makeUser(HttpServletRequest request) throws IOException, ServletException{
        User user = new User();
        user.setfName(request.getParameter("fName"));
        user.setlName(request.getParameter("lName"));
        if(!"".equals(request.getParameter("userName").trim())) {
            user.setUserName(request.getParameter("userName"));
        }
        if(!"".equals(request.getParameter("password").trim())) {
            user.setPassword(request.getParameter("password"));
        }
        if(!"".equals(request.getParameter("birthYear").trim())) {
            user.setBirthYear(request.getParameter("birthYear"));
        }
        if(!"".equals(request.getParameter("email").trim())) {
            user.setEmail(request.getParameter("email"));
        }
        if(!"".equals(request.getParameter("studentId").trim())) {
            user.setStudentId(request.getParameter("studentId"));
        }
        if(!"".equals(request.getParameter("nationalId").trim())) {
            user.setNationalId(request.getParameter("nationalId"));
        }
        if(!"".equals(request.getParameter("phone").trim())) {
            user.setPhone(request.getParameter("phone"));
        }

        user.setPosition(positionDAO.getPositionById(Integer.parseInt(request.getParameter("positionTitle").trim())));

        int userId = ((User)request.getSession().getAttribute("currentUser")).getPosition().getId();

        if( userId == 1 || userId == 2 ){
            Association association = associationDAO.getAssociationById(Integer.parseInt(request.getParameter("associationId")));
            user.setAssociation(association);
            user.setActive(request.getParameter("active"));
        } else if (userId == 4){
            user.setAssociation(((User) request.getSession().getAttribute("currentUser")).getAssociation());
            user.setActive("true");
        }

        try{
            Part photo = request.getPart("photo");
            if (photo != null) {
                photo.write(photo.getSubmittedFileName());
                user.setPhoto(Address.MEMBERS_RE + photo.getSubmittedFileName());
            }
        } catch (Exception e){
            user.setPhoto(request.getParameter("image2"));
        }

        return user;
    }
}

