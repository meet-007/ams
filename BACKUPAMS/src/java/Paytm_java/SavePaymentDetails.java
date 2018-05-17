/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Paytm_java;

import GetSmem.GetMemberFrmLid;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import reg.Login;
import reg.PaidMaintenance;
import reg.SocietyMembers;
import reg.Transaction;

/**
 *
 * @author Dharti
 */
public class SavePaymentDetails extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            String txnid = request.getAttribute("txnid").toString();
            String txndate = request.getAttribute("txndate").toString();
            String msg = request.getAttribute("msg").toString();
            HttpSession sess = request.getSession();
            double amount = (Double) sess.getAttribute("amount");
            Login user = (Login) sess.getAttribute("user");
            GetMemberFrmLid gmf = new GetMemberFrmLid();
            SocietyMembers sm = gmf.getSmem(user.getLid());

            Session session = hbutil.NewHibernateUtil.getSessionFactory().openSession();
            org.hibernate.Transaction t = session.beginTransaction();
            reg.Transaction transaction = new Transaction();
            transaction.setTId(txnid);
            transaction.setAmount(amount);
            transaction.setDate(txndate);
            session.save(transaction);
            PaidMaintenance pm = new PaidMaintenance();
            pm.setMemId(sm.getMemId());
            pm.setSocId(sm.getSocId().getSid());
            pm.setTId(transaction.getTpkId());
            pm.setMemberName(sm.getFname() + " " +sm.getLname());
            session.save(pm);
            t.commit();
        } catch (Exception e) {
            System.out.println("Exception : " + e.getMessage());
            e.printStackTrace();
        }
        out.print("payment successfull");

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
