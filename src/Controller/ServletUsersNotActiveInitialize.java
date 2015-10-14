package Controller;

import Logic.AssociationDAO;
import Logic.PositionDAO;
import Logic.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Saied on 9/21/2015.
 */
public class ServletUsersNotActiveInitialize extends HttpServlet{
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
    public void fillTable(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        List users = userDAO.getAllNotActiveUsers();

        request.setAttribute("positions", positionDAO.getAllPositionsExceptExpertAndBoss());

        request.setAttribute("users", users);

        request.setAttribute("associations", associationDAO.getAllAssociations());

        request.getRequestDispatcher("/app/users-not-active.jsp").forward(request, response);
    }
}
