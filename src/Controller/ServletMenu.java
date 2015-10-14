package Controller;

import Logic.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Amir on 8/22/2015.
 */
@WebServlet(name = "ServletMenu")
public class ServletMenu extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        UserDAO userDAO = new UserDAO();
//        List users = userDAO.getAllUsers();
//        response.setContentType("text/html;charset=UTF-8");
////        request.setCharacterEncoding("UTF-8");
//        request.setAttribute("users", users);
        try{
            request.setAttribute("initiated", "menu");
            request.getRequestDispatcher("/Controller/ServletUsersActive").forward(request, response);
        } catch (Exception e){
            e.printStackTrace();
        }

    }
}
