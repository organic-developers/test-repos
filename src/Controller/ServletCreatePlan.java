package Controller;


import Logic.WorkflowDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "ServletCreateplan")
public class ServletCreatePlan extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

//        WorkflowDAO workflowDAO = new WorkflowDAO();
//        List workflows = workflowDAO.getAllWorkflows();
//
//        request.setAttribute("workflows", workflows);

        String type = request.getParameter("type");

        if(type.equals("1")){
            request.getRequestDispatcher("/app/create-plan-trip.jsp").forward(request, response);
        } else if(type.equals("2")){
            request.getRequestDispatcher("/app/create-plan-contest.jsp").forward(request, response);
        } else if(type.equals("3")){
            request.getRequestDispatcher("/app/create-plan-exhibition.jsp").forward(request, response);
        } else if(type.equals("4")){
            request.getRequestDispatcher("/app/create-plan-conference.jsp").forward(request, response);
        } else if(type.equals("5")){
            request.getRequestDispatcher("/app/create-plan-educational.jsp").forward(request, response);
        } else if(type.equals("6")){
            request.getRequestDispatcher("/app/create-plan-magazine.jsp").forward(request, response);
        } else if(type.equals("7")){
            request.getRequestDispatcher("/app/create-plan-else.jsp").forward(request, response);
        }
    }
}
