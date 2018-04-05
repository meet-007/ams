/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.societyclass.GetAdminSoc;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import hbutil.NewHibernateUtil;
import org.hibernate.Transaction;

import reg.*;



/**
 *
 * @author meet
 */
public class MemberReg extends HttpServlet {

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
        String msg="";
        
        try {
            /* TODO output your page here. You may use following sample code. */
           HttpSession s = request.getSession();
           Login login =(Login) s.getAttribute("user");
           int uid = login.getLid();
           String fname = request.getParameter("fname");
           String lname = request.getParameter("lname");
           String uname = request.getParameter("uname");
           String pass = request.getParameter("pwd");
           GetAdminSoc getsoc = new GetAdminSoc();
           Society soc = getsoc.getSid(uid);
           String email = request.getParameter("email");
           String mobile =request.getParameter("mobile");
           String memtype =request.getParameter("memtype");
           
            System.out.println("-----------"+mobile);
           
            Session hs = NewHibernateUtil.getSessionFactory().openSession();
            Transaction t = hs.beginTransaction();
            Login l = new Login();
            l.setUsername(uname);
            l.setPassword(pass);
            l.setRole("Society member");
            l.setStatus("Active");
            hs.save(l);
            SocietyMembers sm = new SocietyMembers();
            sm.setLid(l);
            sm.setSocId(soc);
            sm.setFname(fname);
            sm.setLname(lname);
            sm.setEmail(email);
            sm.setMobile(mobile);
            sm.setMemberType(memtype);
            sm.setImage(" ");
            sm.setIdProof(" ");
            hs.save(sm);
            t.commit();
            out.println("member inserted");
            
           
        }
                catch(Exception e)
                {
                    out.println(e.getMessage());
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
