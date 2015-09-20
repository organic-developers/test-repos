package Controller;


import Logic.WorkflowDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//import javax.servlet.annotation.WebServlet;


//@WebServlet(name = "ServletCreate-plan")
public class ServletCreateplan extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

//        WorkflowDAO workflowDAO = new WorkflowDAO();
//        List workflows = workflowDAO.getAllWorkflows();
//
//        request.setAttribute("workflows", workflows);

        request.getRequestDispatcher("/app/create-plan.jsp").forward(request, response);
    }
}
