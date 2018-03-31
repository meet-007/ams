/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mod.complain;

import GetSmem.GetMemberFrmLid;
import com.societyclass.GetAdminSoc;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import hbutil.NewHibernateUtil;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import org.hibernate.Transaction;
import reg.*;

/**
 *
 * @author meet
 */
public class AddComplain extends HttpServlet {

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
        HttpSession session = request.getSession();
        Login l = (Login) session.getAttribute("user");
        
        GetMemberFrmLid gml = new GetMemberFrmLid();
        SocietyMembers sm = gml.getSmem(l.getLid());
        Society soc = sm.getSocId();
      
        String complain_date = request.getParameter("comp_date");
        String complain_desc = request.getParameter("comp_desc");
        //String img = request.getParameter("comp_img");
        int upvote = 0;
        int dwnvote = 0;
        String msg = "";

        try {
            Session s = NewHibernateUtil.getSessionFactory().openSession();
            Transaction t = s.beginTransaction();
          
            Complain comp = new Complain();
            comp.setLid(l);
            comp.setSocId(soc);
            comp.setDate(complain_date);
            comp.setDescription(complain_desc);
            comp.setUpvote(upvote);
            comp.setDwnvote(dwnvote);
            comp.setStatus("pending");
            s.save(comp);
            t.commit();
            msg = "complain added successfully !";
            s.close();
        } catch (Exception e) {
           msg = e.getMessage();
        }
        RequestDispatcher rdisp = request.getRequestDispatcher("AddComplaine.jsp");
        request.setAttribute("msg", msg);
        rdisp.forward(request, response);
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
