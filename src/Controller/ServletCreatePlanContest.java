package Controller;

import Models.Plan;
import org.hibernate.Session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Amir on 8/13/2015.
 */
@WebServlet(name = "ServletCreatePlanContest")
public class ServletCreatePlanContest extends HttpServlet {
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);

    }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        Plan plan = new Plan();
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        //Get parameters and set them into Models.Plan Class for preparing them to save in DB
        plan.setTitle(request.getParameter("title"));
        plan.setPlace(request.getParameter("place"));
        plan.setBeginDate(request.getParameter("beginDate"));
        plan.setBeginDate(request.getParameter("endDate"));
        plan.setTime(request.getParameter("time"));
        //Creating Session and saving in DB
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try{
            session.beginTransaction();
            session.saveOrUpdate(plan);
            session.getTransaction().commit();
            request.getRequestDispatcher("/successful.jsp").include(request, response);

        }catch (Exception e) {
            if (session.getTransaction() != null) session.getTransaction().rollback();
            e.printStackTrace();
            request.getRequestDispatcher("/create-plan.jsp").include(request, response);
        }

    }
}
