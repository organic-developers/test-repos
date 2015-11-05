package Controller;

import Logic.AssociationDAO;
import Logic.PositionDAO;
import Logic.UserDAO;
import Models.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Saied on 9/22/2015.
 */
public class ServletUsersClerkInitialize extends HttpServlet {
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
        fillTable(request, response);
    }
    public void fillTable(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            request.setAttribute("positions", positionDAO.getAllMemberPositionsExceptClerk());

            User user = (User) request.getSession(false).getAttribute("currentUser");

            request.setAttribute("users", userDAO.getAllActiveMembersExceptClerkByAssociationId(user.getAssociation().getId()));

            request.getRequestDispatcher("/app/users-clerk.jsp").forward(request, response);

        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
