/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mod.complain;

import hbutil.NewHibernateUtil;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;
import reg.Complain;

/**
 *
 * @author meet
 */
public class UpdateComplainServ extends HttpServlet {

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
        String rspmsg = "";
        Complain complain = null;
        try {
            HttpSession s = request.getSession();
            String idcompain = request.getParameter("idcomplain");
            String status = request.getParameter("status");
            String action = request.getParameter("action");
            //Complain complain = new Complain();
            Session se = NewHibernateUtil.getSessionFactory().openSession();
            complain = (Complain) se.get(Complain.class, Integer.parseInt(idcompain));
            complain.setStatus(status);
            complain.setActionTaken(action);
            Transaction t = se.beginTransaction();
            se.saveOrUpdate(complain);
            t.commit();
           rspmsg = "updated successfully";

        } catch (Exception e) {
            e.printStackTrace();
            rspmsg = e.getMessage();
    }
        request.setAttribute("rspmsg",rspmsg);
        RequestDispatcher rd =request.getRequestDispatcher("EditComplainServ?id="+complain.getComplainId());
        rd.forward(request, response);
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
