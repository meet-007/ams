<%-- 
    Document   : view_Complain
    Created on : 28 Jan, 2018, 3:47:17 PM
    Author     : Dell
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="AdminHeader.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Complain</title>
    </head>
    <body  class="cbp-spmenu-push">
        <div class="main-content">
            <div id="page-wrapper">
                <div class="main-page">
                    <div class="tables">
                        <div class="panel-body widget-shadow" data-example-id="hoverable-table"> 

                            <h4>View Complain:</h4>
                            <table class="table table-hover"> 
                                <thead> 

                                    <tr> 
                                        <th>No</th>
                                        <th>Member_name</th>
                                        <th>Date</th>
                                        <th>Description</th>
                                        <th>Votes</th>
                                        <!-- <th>Image</th>-->
                                        <th>Status</th>


                                    </tr> 
                                </thead> 
                                <tbody> 
                                    <%                                        if (request.getAttribute("list") != null) {
                                            ArrayList list = (ArrayList) request.getAttribute("list");
                                            Iterator it = list.iterator();
                                            int num = 0;
                                            while (it.hasNext()) {
                                                num++;
                                                Complain c = (Complain) it.next();
                                                Login user = c.getLid();
                                                String mname = user.getUsername();
                                                String date = c.getDate();
                                                String Desc = c.getDescription();
                                                int votes = c.getUpvote();
                                                String status = c.getStatus();
                                    %>
                                    <tr> 
                                        <th scope="row"><%=num%></th> 
                                        <td><%=mname%></td>
                                        <td><%=date%></td>
                                        <td><%=Desc%></td>
                                        <td><%=votes%></td>
                                        <td><!--<select name="Select">
                                                <option>Select</option>
                                                <option>Souled</option>
                                                <option>pending</option>
                                            </select>--><%=status%></td>
                                    </tr> 
                                    <%
                                            }
                                        }
                                    %>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>
