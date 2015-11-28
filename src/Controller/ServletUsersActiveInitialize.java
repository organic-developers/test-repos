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
import java.util.List;

/**
 * Created by Saied on 9/21/2015.
 */
public class ServletUsersActiveInitialize extends HttpServlet {
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
            int userId = ((User)request.getSession().getAttribute("currentUser")).getPosition().getId();

            if( userId == 1 || userId == 2 ){

                request.setAttribute("positions", positionDAO.getAllPositionsExceptExpertAndBoss());

                request.setAttribute("users", userDAO.getAllUsersExceptExpertAndBoss());

                request.setAttribute("associations", associationDAO.getAllActiveAssociations());

            } else if (userId == 4){

                request.setAttribute("positions", positionDAO.getAllMemberPositionsExceptClerk());

                User user = (User) request.getSession(false).getAttribute("currentUser");

                request.setAttribute("users", userDAO.getAllActiveMembersExceptClerkByAssociationId(user.getAssociation().getId()));
            }

            request.getRequestDispatcher("/app/users-active.jsp").forward(request, response);

        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
