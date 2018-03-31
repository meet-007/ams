package mod.notice;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.societyclass.GetAdminSoc;
import hbutil.NewHibernateUtil;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import reg.Notice;
import reg.Society;
import javax.servlet.http.HttpSession;
import org.hibernate.HibernateException;
import reg.Login;

/**
 *
 * @author Dell
 */
@WebServlet(urlPatterns = {"/Addnotice"})
public class Addnotice extends HttpServlet {

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
        String date = request.getParameter("ndate");
        String des = request.getParameter("des");
        String msg = "";
        try {
            Session s = NewHibernateUtil.getSessionFactory().openSession();
            Transaction tr = s.beginTransaction();
            HttpSession ses = request.getSession();
            Login l = (Login) ses.getAttribute("user");
            com.societyclass.GetAdminSoc gas = new GetAdminSoc();
            Society soc = gas.getSociety(l);
            Notice n = new Notice();
            n.setSocid(soc);
            n.setDate(date);
            n.setDescription(des);
            s.save(n);
            tr.commit();
            msg = "Add successfully";

        } catch (HibernateException e) {
            msg = e.getMessage();
            System.out.println("Exception :" + e);
            System.out.println("==================================");
            e.printStackTrace();
        } finally {
            PrintWriter out = response.getWriter();
            out.print(msg);
        }
       /* RequestDispatcher rd = request.getRequestDispatcher("AddNotice.jsp");
        request.setAttribute("msg", m
        sg);
        rd.forward(request, response);
    */}

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
