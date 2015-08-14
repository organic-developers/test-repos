package Controller;


import org.hibernate.Session;
import Models.*;

import javax.servlet.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "ServletCreate-plan")
public class ServletCreateplan extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        createPlan(request, response);

    }

    private void createPlan(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();

        Plan plan = new Plan();
        plan.setTitle(request.getParameter("title"));
        plan.setPlace(request.getParameter("place"));
        session.save(plan);

        session.getTransaction().commit();

        RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
        rd.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
