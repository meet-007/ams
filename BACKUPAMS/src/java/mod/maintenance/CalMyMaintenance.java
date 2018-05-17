/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mod.maintenance;

import GetSmem.GetMemberFrmLid;
import hbutil.NewHibernateUtil;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import reg.CalMaintenance;
import reg.Login;
import reg.Society;
import java.util.Calendar;
import javax.servlet.RequestDispatcher;
import reg.Apartment;

/**
 *
 * @author meet
 */
public class CalMyMaintenance extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession sess = request.getSession();
            Login login = (Login) sess.getAttribute("user");
            System.out.println("Login Id : " + login.toString());
            Society sid = new GetMemberFrmLid().getSmem(login.getLid()).getSocId();
            Session s = NewHibernateUtil.getSessionFactory().openSession();
            Transaction t = s.beginTransaction();
            Criteria c = s.createCriteria(CalMaintenance.class);
           Calendar now = Calendar.getInstance();
           Integer month = now.get(Calendar.MONTH)+1;
           String pattern = "%"+"0"+month.toString()+"%";
            c.add(Restrictions.like("date",pattern));
            ArrayList<CalMaintenance> arr1 = (ArrayList)c.list();
            Criteria c1 = s.createCriteria(Apartment.class);
            c1.add(Restrictions.like("sid",sid));
            ArrayList<Apartment> aptlist = (ArrayList)c1.list();
            t.commit();
            double total=0;
            for(CalMaintenance cm : arr1){
                total += cm.getAmount();
            }
            double maintenance = total/aptlist.size();
            request.setAttribute("amount", maintenance);
            sess.setAttribute("amount", maintenance);
            RequestDispatcher rd = request.getRequestDispatcher("Payment.jsp");
            rd.forward(request, response);


            System.out.println(arr1.get(0).getAmount());
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
