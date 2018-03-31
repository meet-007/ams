/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mod.complain;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import hbutil.NewHibernateUtil;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import reg.Complain;
import reg.Login;
import reg.Society;


/**
 *
 * @author meet
 */
public class ViewComplain extends HttpServlet {

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
        String msg = "";
        ArrayList arr = null;
       try{
           HttpSession sess = request.getSession();
               Login login = (Login)sess.getAttribute("user");
           System.out.println("Login Id : " + login.toString());
           Society sid = new com.societyclass.GetAdminSoc().getSociety(login);
           Session s = NewHibernateUtil.getSessionFactory().openSession();
           Transaction t = s.beginTransaction();
           Criteria c = s.createCriteria(Complain.class);
           
           c.add(Restrictions.eq("status", request.getParameter("status"))).add(Restrictions.eq("socId", sid));
           arr = (ArrayList)c.list();
           t.commit();
           if(arr.size()==0){
               msg = "no record found";
           }      
       }catch(Exception e){
           msg = e.getMessage();
           e.printStackTrace();
       }
       request.setAttribute("list",arr);
       request.setAttribute("msg", msg);
        RequestDispatcher rd = request.getRequestDispatcher("UpdatComplain.jsp");
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
