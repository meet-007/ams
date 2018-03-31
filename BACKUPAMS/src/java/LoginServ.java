/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import hbutil.NewHibernateUtil;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import reg.Login;

/**
 *
 * @author meet
 */
public class LoginServ extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        try {
            String msg = "";
            String Uname = request.getParameter("username");
            String pwd = request.getParameter("password");
            String page = "Login.jsp?page=login";
            
            Session s = NewHibernateUtil.getSessionFactory().openSession();
            Transaction t = s.beginTransaction();
            Criteria cr = s.createCriteria(Login.class);
            cr.add(Restrictions.eq("username", Uname));
            cr.add(Restrictions.eq("password", pwd));
            //cr.add(Restrictions.ne("status", "pending"));
            ArrayList ar = (ArrayList) cr.list();
            if (ar.size() > 0) {
                Login l = (Login) ar.get(0);
                if (!l.getStatus().equals("pending")) {
                    if (l.getRole().equals("Society admin")) {
                        page = "AdminHome.jsp";
//                    RequestDispatcher rd = request.getRequestDispatcher("AdminHome.jsp");
//                    rd.forward(request, response);

                    } else if (l.getRole().equals("Society member")) {
                        page = "MemberHome.jsp";
//                    RequestDispatcher rd = request.getRequestDispatcher("MemberHome.jsp");
//                    rd.forward(request, response);
                    }
                    HttpSession session = request.getSession();
                    session.setAttribute("user", l);

                } else {
                    msg = "Request Not Approved !!!";
                }
            } else {
                msg = "No User Found.....Please Register First !!!";
            }
            t.commit();
            s.close();

            request.setAttribute("msg", msg);
            RequestDispatcher rd = request.getRequestDispatcher(page);
            rd.forward(request, response);

        } catch (HibernateException | ServletException | IOException e) {
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
