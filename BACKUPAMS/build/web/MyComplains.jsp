<%-- 
    Document   : MyComplains
    Created on : 31 Mar, 2018, 4:45:11 PM
    Author     : meet
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="MemberHeader.jsp" %>
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

                            <h4>Your Complains:</h4>
                            <table class="table table-hover"> 
                                <thead> 

                                    <tr> 
                                        <th>No</th>
                                        <th>Date</th>
                                        <th>Description</th>
                                        <th>Upvotes</th>
                                        <th>Downvotes</th>
                                        <th>Status</th>
                                        <th>Action Taken</th>




                                    </tr> 
                                </thead> 
                                <tbody> 
                                    <%  
                                     Complain c =null;
                                    if (request.getAttribute("list") != null) {
                                            ArrayList list = (ArrayList) request.getAttribute("list");
                                            Iterator it = list.iterator();
                                            int num = 0;
                                            while (it.hasNext()) {
                                                num++;
                                                c = (Complain) it.next();
                                                String date = c.getDate();
                                                String Desc = c.getDescription();
                                                int upvotes = c.getUpvote();
                                                int dwnvotes = c.getDwnvote();
                                                String status = c.getStatus();
                                                String action = c.getActionTaken();
                                    %>
                                    <tr> 
                                        <th scope="row"><%=num%></th> 
                                        <td><%=date%></td>
                                        <td><%=Desc%></td>
                                        <td><%=upvotes%></td>
                                        <td><%=dwnvotes%></td>
                                        <td><%=status%></td>
                                        <td><%if(c.getActionTaken()== null){%> 
                                            none
                                            <%}else{%>
                                            <%=c.getActionTaken()%>
                                            <%}%>
                                        </td>

                                    </tr> 
                                    <%
                                            }
                                        }else{
                                    %>
                                    no complains found
                                    <%}%>
                                </tbody>
                            </table>



                        </div>


                    </div>

                </div>

            </div>     
        </div>




    </body>

</html>
