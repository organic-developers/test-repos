package Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import Logic.PlanCreater;
import Models.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


@WebServlet(name = "ServletUsers", urlPatterns = {"/ServletUsers"})
public class ServletUsers extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        request.setCharacterEncoding("UTF-8");

        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            Plan plan = new PlanCreater().makePlan(request);
            session.save(plan);

            session.getTransaction().commit();
            session.close();

            request.getRequestDispatcher("/successful.jsp").forward(request, response);

        } catch (Exception e){
            e.printStackTrace();
            request.getRequestDispatcher("/failed.jsp").forward(request, response);
        }

    }

}

