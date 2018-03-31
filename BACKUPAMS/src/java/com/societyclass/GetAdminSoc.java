/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.societyclass;

import javax.print.DocFlavor;
import org.hibernate.Session;
import hbutil.NewHibernateUtil;
import java.util.ArrayList;
import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import reg.*;

/**
 *
 * @author meet
 */
public class GetAdminSoc {
    
    private int socid;
    public Society getSid(int uid)
    {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Transaction t = s.beginTransaction();
        Criteria cr = s.createCriteria(Society.class);
        Login l = new Login();
        l.setLid(uid);
        cr.add(Restrictions.eq("lid", l));
        ArrayList arr =(ArrayList) cr.list();
        Society soc = (Society)arr.get(0);
       
        t.commit();
        return soc;
    }
    //getting society from society id from Society member
    public Society getSociety(Login lid)
    {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Transaction t = s.beginTransaction();
        Criteria cr = s.createCriteria(Society.class);
        cr.add(Restrictions.eq("lid", lid));
        ArrayList arr =(ArrayList) cr.list();
        Society soc = (Society)arr.get(0);
       
        t.commit();
        return soc;
    }
    
}
