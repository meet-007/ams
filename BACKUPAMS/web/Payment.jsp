<%-- 
    Document   : Payment
    Created on : 6 Apr, 2018, 6:58:53 PM
    Author     : meet
--%>

<%@page import="reg.Apartment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="hbutil.NewHibernateUtil"%>
<%@page import="reg.Society"%>
<%@page import="reg.SocietyMembers"%>
<%@page import="GetSmem.GetMemberFrmLid"%>
<%@page import="GetSmem.GetMemberFrmLid"%>
<%@page import="reg.Login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="MemberHeader.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body  class="cbp-spmenu-push">
        <div class="main-content">
            <div id="page-wrapper">
                <div class="main-page">
                    <div class="container">         
                        <div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
                            <div class="form-title">
                                <h4>Maintenance Calculation:</h4>
                            </div>
                            <div class="form-body">
                                <form method="post" action="TxnTest.jsp" class="form-horizontal">
                                    <%            HttpSession sess = request.getSession();
                                        Login login = (Login) sess.getAttribute("user");
                                        GetMemberFrmLid gm2 = new GetMemberFrmLid();
                                        SocietyMembers sm1 = gml.getSmem(login.getLid());
                                        Society soc1 = sm.getSocId();
                                        Session ses = NewHibernateUtil.getSessionFactory().openSession();
                                        Transaction tr = ses.beginTransaction();
                                        Criteria c = ses.createCriteria(Apartment.class);
                                        c.add(Restrictions.eq("occupier", sm));
                                        Apartment apt = (Apartment) c.list().get(0);
                                        tr.commit();
                                    %>
                                    <div class="form-group"> 
                                        <div class="updtlabel">
                                            <label for="inputEmail3" class="col-sm-2 control-label">name :</label> </div>
                                        <div class="col-sm-4">  <%=apt.getOccupier().getFname() + apt.getOccupier().getLname()%> </div>
                                    </div>
                                    <div class="form-group"> 
                                        <div class="updtlabel">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Apt no :</label> </div>
                                        <div class="col-sm-4">  <%=apt.getNumber()%></div>
                                    </div>
                                    <div class="form-group"> 
                                        <div class="updtlabel">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Amount :</label> </div>
                                        <div class="col-sm-4">  <%=request.getAttribute("amount")%> </div>
                                    </div>
                                    <% Double amt = (Double)request.getAttribute("amount");
                                    amt /= 100;
                                    String t = amt.toString();
                                    %>
                                    <input type="hidden" name="amount" value="<%=t%>" >
                                 

                                    <button type="submit" class="btn btn-warning btn-flat btn-pri col-sm-offset-2"><i class="fa fa-money" aria-hidden="true" ></i>proceed to pay</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                </body>
                </html>
