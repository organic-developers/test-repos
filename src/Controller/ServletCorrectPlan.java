package Controller;

import Logic.PlanDAO;
import Models.Enlisted;
import Models.Expense;
import Models.Plan;
import Models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;


@WebServlet(name = "ServletCorrectPlan", urlPatterns = "/ServletCorrectPlan")
public class ServletCorrectPlan extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        PlanDAO planDAO = new PlanDAO();

        Plan plan = planDAO.getCompletePlanById(Integer.parseInt(request.getParameter("id").trim()));

        plan.setTitle(request.getParameter("title"));
        plan.setPlace(request.getParameter("place"));
        plan.setBeginDate(request.getParameter("beginDate"));
        plan.setEndDate(request.getParameter("endDate"));
        plan.setTime(request.getParameter("time"));
        plan.setRequestedItems(request.getParameter("requestedItems"));

        plan.setEnlisted(makeEnlisted(request));
        plan.setExpenses(makeExpenses(request));


        plan.setWorkflowState(planDAO.getWorkflowForward(plan.getId()));

        plan.getPlanStateHistories().add(planDAO.getPlanStateHistory((User) request.getSession().getAttribute("currentUser"), plan));

        plan.setSeen("false");

        planDAO.updatePlan(plan);

        request.getRequestDispatcher("/Controller/ServletDashboardInitializer").forward(request, response);
    }

    public List makeEnlisted(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("enlisted-fName-" + i) == null || request.getParameter("enlisted-fName-" + i).equals(""))) {
            List enlisteds = new ArrayList<>();
            while (!(request.getParameter("enlisted-fName-" + i) == null || request.getParameter("enlisted-fName-" + i).equals(""))) {
                Enlisted enlisted = new Enlisted();
                enlisted.setfName(request.getParameter("enlisted-fName-" + i));
                enlisted.setlName(request.getParameter("enlisted-lName-" + i));
                enlisted.setStudentId(request.getParameter("enlisted-StudentId-" + i));
                enlisted.setPhone(request.getParameter("enlisted-phone-" + i));
                enlisted.setEmail(request.getParameter("enlisted-email-" + i));
                enlisteds.add(enlisted);
                i++;
            }
            return enlisteds;
        }
        return null;
    }


    public List makeExpenses(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("expense-name-" + i) == null)) {
            if (!(request.getParameter("expense-name-" + i).equals(""))) {
                List expenses = new ArrayList<>();
                while (!(request.getParameter("expense-name-" + i) == null)) {
                    if (!(request.getParameter("expense-name-" + i).equals(""))) {
                        Expense expense = new Expense();
                        expense.setName(request.getParameter("expense-name-" + i));
                        expense.setValue(request.getParameter("expense-value-" + i));
                        expense.setComment(request.getParameter("expense-comment-" + i));
                        expenses.add(expense);
                        i++;
                    }
                }
                return expenses;
            }
        }
        return null;
    }
}
