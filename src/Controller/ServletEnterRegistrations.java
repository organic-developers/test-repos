package Controller;

import Logic.PlanDAO;
import Models.Enlisted;
import Models.Plan;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashSet;


@WebServlet(name = "ServletEnterRegistrations", urlPatterns = "/ServletEnterRegistrations")
public class ServletEnterRegistrations extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        request.setCharacterEncoding("UTF-8");

        PlanDAO planDAO = new PlanDAO();

        Plan plan = planDAO.getPlanById(Integer.parseInt(request.getParameter("id")));

        plan.setStudentMoney(request.getParameter("studentMoney"));
        plan.setSponsorMoney(request.getParameter("sponsorMoney"));
        plan.setEnlisted(makeEnlisted(request));

        planDAO.updatePlan(plan);
        planDAO.workflowForward(plan.getId());

        request.getRequestDispatcher("../Controller/ServletDashboardInitializer").forward(request, response);

    }

    public HashSet makeEnlisted(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("enlisted-fName-" + i) == null || request.getParameter("enlisted-fName-" + i).equals(""))) {
            HashSet<Enlisted> enlisteds = new HashSet<>();
            while (!(request.getParameter("enlisted-fName-" + i) == null || request.getParameter("enlisted-fName-" + i).equals(""))) {
                Enlisted enlisted = new Enlisted();
                enlisted.setfName(request.getParameter("enlisted-fName-" + i));
                enlisted.setlName(request.getParameter("enlisted-lName-" + i));
                enlisted.setStudentId(request.getParameter("enlisted-studentId-" + i));
                enlisted.setPhone(request.getParameter("enlisted-phone-" + i));
                enlisted.setEmail(request.getParameter("enlisted-email-" + i));
                enlisteds.add(enlisted);
                i++;
            }
            return enlisteds;
        }
        return null;
    }
}

