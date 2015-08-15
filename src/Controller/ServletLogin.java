package Controller;

import Models.User;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by Amir on 8/13/2015.
 */
@WebServlet(name = "ServletLogin")
public class ServletLogin extends HttpServlet {
    private String message;
    /*@Override
    public void init() {
        message = "Your logged in";
        //HibernateUtil Hutil = new HibernateUtil();

    }*/
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

        response.setContentType("text/html");
        //PrintWriter out = response.getWriter();
        //out.println("<h1>" + message + "</h1>");
        if(isUser(request.getParameter("user_name"),request.getParameter("password"))){
            RequestDispatcher rd = request.getRequestDispatcher("dashboard-index.jsp");
            rd.forward(request, response);
        }else{
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }


    }

    public boolean isUser(String userName, String password) throws IOException {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List modifiedUser = session.createCriteria(User.class)
                .add(Restrictions.eq("userName", userName))
                .add(Restrictions.eq("password", password))
                .list();
        session.getTransaction().commit();
        if (modifiedUser.isEmpty()) {
            return false;
        } else {
            return true;
        }
        //session.close();
    }

    public void destroy() {

    }
}