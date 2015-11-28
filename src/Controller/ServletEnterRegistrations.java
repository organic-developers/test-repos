package Controller;

import Logic.PlanDAO;
import Models.Enlisted;
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


@WebServlet(name = "ServletEnterRegistrations", urlPatterns = "/ServletEnterRegistrations")
public class ServletEnterRegistrations extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        PlanDAO planDAO = new PlanDAO();

        Plan plan = planDAO.getCompletePlanById(Integer.parseInt(request.getParameter("id")));

        if (request.getParameter("submit").equals("tentative")) {

            plan.setEnlisted(makeEnlisted(request));

        } else if (request.getParameter("submit").equals("send")) {

            plan.setEnlisted(makeEnlisted2(request));

            plan.setWorkflowState(planDAO.getWorkflowForward(plan.getId()));

            plan.getPlanStateHistories().add(planDAO.getPlanStateHistory((User) request.getSession().getAttribute("currentUser"), plan));

            plan.setSeen("false");
        }
//        ServletPlanFields pf = new ServletPlanFields(request);
//        plan.setEnlisted(makeEnlisted(request));
//
//        plan.setWorkflowState(planDAO.getWorkflowForward(plan.getId()));
//
//        plan.getPlanStateHistories().add(planDAO.getPlanStateHistory((User) request.getSession().getAttribute("currentUser"), plan));
//
//        plan.setSeen("false");

        planDAO.updatePlan(plan);

        request.getRequestDispatcher("../Controller/ServletDashboardInitializer").forward(request, response);
    }

    public List makeEnlisted(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("enlisted-fName-" + i) == null || request.getParameter("enlisted-fName-" + i).equals(""))) {
            List enlisteds = new ArrayList<>();
            while (!(request.getParameter("enlisted-fName-" + i) == null || request.getParameter("enlisted-fName-" + i).equals(""))) {
                Enlisted enlisted = new Enlisted();
                enlisted.setfName(request.getParameter("enlisted-fName-" + i));
                enlisted.setlName(request.getParameter("enlisted-lName-" + i));
                enlisted.setStudentId(request.getParameter("enlisted-studentId-" + i));
                enlisted.setPhone(request.getParameter("enlisted-phone-" + i));
                enlisted.setEmail(request.getParameter("enlisted-email-" + i));
                enlisted.setConfirmed(request.getParameter("confirmed-" + i));
//                System.out.println(request.getParameter("confirmed-" + i));
                enlisteds.add(enlisted);
                i++;
            }
            return enlisteds;
        }
        return null;
    }

    public List makeEnlisted2(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("enlisted-fName-" + i) == null || request.getParameter("enlisted-fName-" + i).equals(""))) {
            List enlisteds = new ArrayList<>();
            while (!(request.getParameter("enlisted-fName-" + i) == null || request.getParameter("enlisted-fName-" + i).equals(""))) {
                Enlisted enlisted = new Enlisted();
                if ( !(null == request.getParameter("confirmed-" + i)) && "true".equals(request.getParameter("confirmed-" + i).trim())) {
                    enlisted.setfName(request.getParameter("enlisted-fName-" + i));
                    enlisted.setlName(request.getParameter("enlisted-lName-" + i));
                    enlisted.setStudentId(request.getParameter("enlisted-studentId-" + i));
                    enlisted.setPhone(request.getParameter("enlisted-phone-" + i));
                    enlisted.setEmail(request.getParameter("enlisted-email-" + i));
                    enlisteds.add(enlisted);
                }
                i++;
            }
            return enlisteds;
        }
        return null;
    }
}