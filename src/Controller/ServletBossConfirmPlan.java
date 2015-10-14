package Controller;

import Logic.PlanDAO;
import Models.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@WebServlet(name = "ServletBossConfirmPlan", urlPatterns = {"/ServletBossConfirmPlan"})
public class ServletBossConfirmPlan extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        PlanDAO planDAO = new PlanDAO();
        Plan plan = planDAO.getCompletePlanById(Integer.parseInt(request.getParameter("id")));
        plan.setBossComment(request.getParameter("bossComment"));


        plan.setTitle(request.getParameter("title"));
        plan.setPlace(request.getParameter("place"));
        plan.setBeginDate(request.getParameter("beginDate"));
        plan.setEndDate(request.getParameter("endDate"));
        plan.setTime(request.getParameter("time"));
        plan.setRequestedItems(request.getParameter("requestedItems"));
        plan.setRegistrationMin(request.getParameter("registrationMin"));
        plan.setRegistrationMax(request.getParameter("registrationMax"));
        plan.setSupervisorFName(request.getParameter("supervisorFName"));
        plan.setSupervisorLName(request.getParameter("supervisorLName"));
        plan.setSupervisorPosition(request.getParameter("supervisorPosition"));
        plan.setSupervisorPhone(request.getParameter("supervisorPhone"));
        plan.setStudentMoney(request.getParameter("studentMoney"));
        plan.setSponsorMoney(request.getParameter("sponsorMoney"));
        plan.setOtherIncome(request.getParameter("otherIncome"));

        plan.setPersonnel(makePersonnel(request));
        plan.setExpenses(makeExpenses(request));


        if(request.getParameter("submit").equals("confirm")){
            plan.setWorkflowState(planDAO.getWorkflowForward(plan.getId()));
        } else if(request.getParameter("submit").equals("reject")) {
            plan.setWorkflowState(planDAO.getWorkflowRejected(plan.getId()));
        } else {
            plan.setWorkflowState(planDAO.getWorkflowToBeCorrected(plan.getId()));
        }

        plan.getPlanStateHistories().add(planDAO.getPlanStateHistory((User) request.getSession().getAttribute("currentUser"), plan));

        plan.setSeen("false");

        planDAO.updatePlan(plan);

        request.getRequestDispatcher("../Controller/ServletDashboardInitializer").forward(request, response);
    }


    public List makePersonnel(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("personnel-fName-" + i) == null || request.getParameter("personnel-fName-" + i).equals(""))) {
            List<Personnel> personnels = new ArrayList<>();
            while (!(request.getParameter("personnel-fName-" + i) == null || request.getParameter("personnel-fName-" + i).equals(""))) {
                Personnel personnel = new Personnel();
                personnel.setfName(request.getParameter("personnel-fName-" + i));
                personnel.setlName(request.getParameter("personnel-lName-" + i));
                personnel.setPhone(request.getParameter("personnel-phone-" + i));
                personnels.add(personnel);
                i++;
            }
            return personnels;
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
