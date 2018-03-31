/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.addapt;

import com.societyclass.GetAdminSoc;
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
import reg.Login;
import reg.Society;
import reg.Apartment;
import reg.SocietyMembers;

/**
 *
 * @author meet
 */
public class AddAptDetails extends HttpServlet {

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
        int occupier = Integer.parseInt(request.getParameter("selectoccupier"));
        SocietyMembers ocupier = new SocietyMembers();
        ocupier.setMemId(occupier);
        int owner = Integer.parseInt(request.getParameter("selectowner"));
        SocietyMembers smowner = new SocietyMembers();
        smowner.setMemId(owner);
        String number = request.getParameter("aptno");
        HttpSession s = request.getSession();
        Login login = (Login) s.getAttribute("user");
        int uid = login.getLid();
        GetAdminSoc getsoc = new GetAdminSoc();
        Society soc = getsoc.getSid(uid);
       
        String msg="";
        try {
            Session session = NewHibernateUtil.getSessionFactory().openSession();
            Transaction t = session.beginTransaction();
            Apartment apt = new Apartment();
            apt.setNumber(number);
            apt.setOccupier(ocupier);
            apt.setOwner(smowner);
            apt.setSid(soc);
            session.save(apt);
            t.commit();
            msg="success";
            
           
        } catch (Exception e) {
            msg=e.getMessage();
            System.out.println(e.getMessage());
        }
            request.setAttribute("msg", msg);
            RequestDispatcher rd = request.getRequestDispatcher("GetSocietyMembers");
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
