/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import hbutil.NewHibernateUtil;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import reg.Login;
import reg.Society;
import org.hibernate.Transaction;


/**
 *
 * @author meet
 */
public class AdminReg extends HttpServlet {

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
       String name = request.getParameter("name");
       String state = request.getParameter("state");    
       String city = request.getParameter("city");
       String address = request.getParameter("address");
       int noapt = Integer.parseInt(request.getParameter("noapt"));
       String mobile = request.getParameter("mobile");
       String uname = request.getParameter("uname");
       String pwd = request.getParameter("pass");
       String msg = "";
       try
       {   Session s = NewHibernateUtil.getSessionFactory().openSession();
           Transaction t = s.beginTransaction();
           Login l = new Login();
           l.setUsername(uname);
           l.setPassword(pwd);
           l.setRole("Society admin");
           l.setStatus("allowed");
           s.save(l);
           Society soc = new Society();
           soc.setSocName(name);
           soc.setState(state);
           soc.setCity(city);
           soc.setAddress(address);
           soc.setNoOfApt(noapt);
           soc.setContact(mobile);
           soc.setLid(l);
           s.save(soc);
           
           t.commit();
           msg = "registraion successfully";
           
       }
       catch(Exception e)
       {
           msg=e.getMessage();
       }
       finally
       {
            PrintWriter out = response.getWriter();
            out.print(msg);
       }
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
