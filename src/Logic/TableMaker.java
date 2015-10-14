package Logic;

import Models.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Saied on 10/13/2015.
 */
public class TableMaker {

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
                enlisteds.add(enlisted);
                i++;
            }
            return enlisteds;
        }
        return null;
    }


    public List makeExpenses(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("expense-name-" + i) == null || request.getParameter("expense-name-" + i).equals(""))) {
            List expenses = new ArrayList<>();
            while (!(request.getParameter("expense-name-" + i) == null || request.getParameter("expense-name-" + i).equals(""))) {
                Expense expense = new Expense();
                expense.setName(request.getParameter("expense-name-" + i));
                expense.setValue(request.getParameter("expense-value-" + i));
                expense.setComment(request.getParameter("expense-comment-" + i));
                expenses.add(expense);
                i++;
            }
            return expenses;
        }
        return null;
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


    public List makeGuests(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("guest-fName-" + i) == null || request.getParameter("guest-fName-" + i).equals(""))) {
            List guests = new ArrayList<>();
            while (!(request.getParameter("guest-fName-" + i) == null || request.getParameter("guest-fName-" + i).equals(""))) {
                Guest guest = new Guest();
                guest.setfName(request.getParameter("guest-fName-" + i));
                guest.setlName(request.getParameter("guest-lName-" + i));
                guests.add(guest);
                i++;
            }
            return guests;
        }
        return null;
    }


    public List makeJudges(HttpServletRequest request) {
        int i = 0;
        if (!(request.getParameter("judge-fName-" + i) == null || request.getParameter("judge-fName-" + i).equals(""))) {
            List judges = new ArrayList<>();
            while (!(request.getParameter("judge-fName-" + i) == null || request.getParameter("judge-fName-" + i).equals(""))) {
                Judge judge = new Judge();
                judge.setfName(request.getParameter("judge-fName-" + i));
                judge.setlName(request.getParameter("judge-lName-" + i));
                judge.setFieldOfStudy(request.getParameter("judge-fieldOfStudy-" + i));
                judge.setGrade(request.getParameter("judge-grade-" + i));
                judges.add(judge);
                i++;
            }
            return judges;
        }
        return null;
    }
}
