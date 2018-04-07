<%-- 
    Document   : view_maintenance
    Created on : 31 Mar, 2018, 6:22:03 PM
    Author     : Dell
--%>
<%@page import="mod.cal.cal_maintenance"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="MemberHeader.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Meeting Time</title>
    </head>
    <body  class="cbp-spmenu-push">
        <div class="main-content">
            <div id="page-wrapper">
                <div class="main-page">
                    <div class="tables">
                        <div class="panel-body widget-shadow" data-example-id="hoverable-table"> 

                            <h4>View Maintenance:</h4>
                            <table class="table table-hover"> 
                                <thead> 
                                    <tr> 
                                        <th>no</th> 
                                        <th>Date</th> 
                                        <th>Description</th>
                                        <th>Amount</th>
                                    </tr> 
                                </thead> 
                                <tbody> 
                                    <%    if (request.getAttribute("list") != null) {
                                            ArrayList list = (ArrayList) request.getAttribute("list");
                                            Iterator it = list.iterator();
                                            int num = 0;
                                            while (it.hasNext()) {
                                                num++;
                                                CalMaintenance cm = (CalMaintenance) it.next();
                                                String date = cm.getDate();
                                                String Desc = cm.getDescription();
                                                double Amount = (Double) cm.getAmount();

                                    %>
                                    <tr> 
                                        <th scope="row"><%=num%></th> 
                                        <td><%=date%></td>
                                        <td><%=Desc%></td>
                                        <td><%=Amount%></td>
                                    </tr> 
                                    <%
                                            }
                                        }
                                    %>

                                </tbody>
                            </table>
                                   
                                    
                            <form action="CalMyMaintenance">
                                <button type="submit" class="btn btn-warning btn-flat btn-pri"><i class="fa fa-calculator" aria-hidden="true"></i>Calculate your maintenance</button>
                            </form>
                                    
                                   
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>