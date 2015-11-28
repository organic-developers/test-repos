package Controller;

import Logic.InOfficeDAO;
import Logic.PlanStateHistoryDAO;
import Logic.UserDAO;
import Models.InOffice;
import Models.PlanStateHistory;
import Models.User;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Saied on 11/28/2015.
 */
@WebServlet(name = "ServletShowInOfficeHistory", urlPatterns = "/ServletShowInOfficeHistory")
public class ServletShowInOfficeHistory extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{

            request.setCharacterEncoding("UTF-8");

            UserDAO userDAO = new UserDAO();
            List<InOffice> list = userDAO.getUserInOfficeHistoryById(Integer.parseInt(request.getParameter("id").trim()));

            for(InOffice inOffice: list){
////                if(null == inOffice.getToDate()){
////                    inOffice.setToDate("");
////                }
                inOffice.setPositionName(inOffice.getPosition().getName());
                inOffice.setPosition(null);
//                System.out.println(inOffice.getPosition().getName());
            }


            String json = new Gson().toJson(list);

            response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
            response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
            response.getWriter().write(json);       // Write response body.
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
