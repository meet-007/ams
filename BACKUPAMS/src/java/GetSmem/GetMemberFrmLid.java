/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package GetSmem;
import reg.*;
import hbutil.NewHibernateUtil;
import java.util.ArrayList;
import org.eclipse.persistence.sessions.SessionProfiler;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
/**
 *
 * @author meet
 */
public class GetMemberFrmLid {
   public SocietyMembers getSmem(int uid)
    {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Transaction t = s.beginTransaction();
        Criteria cr = s.createCriteria(SocietyMembers.class);
        Login l = new Login();
        l.setLid(uid);
        cr.add(Restrictions.eq("lid", l));
        ArrayList arr = (ArrayList)cr.list();
        SocietyMembers sm = (SocietyMembers)arr.get(0);
        t.commit();
        return sm;
    }
    
}
