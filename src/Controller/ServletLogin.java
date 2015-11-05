package Controller;

import Logic.PlanDAO;
import Logic.UserDAO;
import Models.User;
import com.ghasemkiani.util.icu.PersianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;


@WebServlet(name = "ServletLogin")
public class ServletLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
//        User user = new User();
//        String name = request.getParameter("user_name");
//        String pass = request.getParameter("password");
//        user.setUserName(name);
//        user.setPassword(pass);
//        if (user.isValid() != null) {
//            HttpSession session = request.getSession();
//            //session.setAttribute("name", name);
//            session.setAttribute("user", user.isValid());


        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUserByUsernameAndPassword(request.getParameter("user_name"), request.getParameter("password"));
        if (user != null) {
            request.getSession().setAttribute("currentUser", user);


            request.getRequestDispatcher(request.getContextPath() + "../Controller/ServletDashboardInitializer").include(request, response);
        }
//        } else {
        //PrintWriter out = response.getWriter();
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            /*out.println("<script type=\"text/javascript\">");
            out.println("document.getElementById('login-form').innerHTML = ;");
            out.println("<div class=\"alert alert-danger\" role=\"alert\">Login Failed </div>");*/
//        }


    }
}
