package Controller;

import Logic.AssociationDAO;
import Logic.PlanDAO;
import Logic.SuggestedPlanDAO;
import Models.Enlisted;
import Models.Plan;
import Models.SuggestedPlan;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "ServletAssociationPage", urlPatterns = "/ServletAssociationPage")
public class ServletAssociationPage extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        SuggestedPlanDAO suggestedPlanDAO = new SuggestedPlanDAO();

        boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));

        if (ajax) {

            String method = request.getParameter("method");

            if (method.equals("methodA")) {

                AssociationDAO associationDAO = new AssociationDAO();

                SuggestedPlan suggestedPlan = new SuggestedPlan();

                suggestedPlan.setTitle(request.getParameter("title"));
                suggestedPlan.setDescription(request.getParameter("description"));
                suggestedPlan.setAssociation(associationDAO.getAssociationById(Integer.parseInt(request.getParameter("associationId"))));
                suggestedPlan.setInView("false");

                suggestedPlanDAO.addSuggestedPlan(suggestedPlan);

            } else if (method.equals("methodB")) {

                String ip = request.getHeader("X-Forwarded-For");
                if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
                    ip = request.getHeader("Proxy-Client-IP");
                }
                if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
                    ip = request.getHeader("WL-Proxy-Client-IP");
                }
                if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
                    ip = request.getHeader("HTTP_CLIENT_IP");
                }
                if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
                    ip = request.getHeader("HTTP_X_FORWARDED_FOR");
                }
                if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
                    ip = request.getRemoteAddr();
                }
                System.out.println(ip);

                int likeNumber = 0;

                try {
                    boolean hasVoted = false;
                    Cookie[] cookies = request.getCookies();
                    for (Cookie c : cookies) {
                        if (c.getName().equals("voted_for_" + request.getParameter("id"))) {
                            hasVoted = true;
                        }
                    }
                    if (hasVoted == false) {
                        likeNumber = suggestedPlanDAO.addLikeNumber(Integer.parseInt(request.getParameter("id").trim()));

                        Cookie vote = new Cookie("voted_for_" + request.getParameter("id"), "true");
                        vote.setMaxAge(60 * 60 * 24 * 5);
                        response.addCookie(vote);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }

                String json = new Gson().toJson(likeNumber + "");

                response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
                response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
                response.getWriter().write(json);       // Write response body.

            } else if (method.equals("methodC")) {

                System.out.println("inside");

                try {
                    Enlisted enlisted = new Enlisted();
                    enlisted.setfName(request.getParameter("fName"));
                    System.out.println(enlisted.getfName());
                    enlisted.setlName(request.getParameter("lName"));
                    enlisted.setStudentId(request.getParameter("studentId"));
                    enlisted.setPhone(request.getParameter("phone"));
                    enlisted.setEmail(request.getParameter("email"));

                    PlanDAO planDAO = new PlanDAO();
                    Plan plan = planDAO.getPlanById(Integer.parseInt(request.getParameter("planId").trim()));
                    plan.getEnlisted().add(enlisted);

                    planDAO.updatePlan(plan);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                System.out.println("outside");

//                String json = new Gson().toJson(likeNumber + "");
//
//                response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
//                response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
//                response.getWriter().write(json);       // Write response body.
            }

        } else {
            request.setCharacterEncoding("UTF-8");
        }
    }
}
