<%-- 
    Document   : UpdatComplain
    Created on : 10 Feb, 2018, 2:53:59 PM
    Author     : meet
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
                                        <th>Upvotes</th>
                                        <th>Downvotes</th>
                                        <th>Status</th>
                                        <th>Update</th>




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
                                                Login user = c.getLid();
                                                String mname = user.getUsername();
                                                String date = c.getDate();
                                                String Desc = c.getDescription();
                                                int upvotes = c.getUpvote();
                                                int dwnvotes = c.getDwnvote();
                                                String status = c.getStatus();
                                    %>
                                    <tr> 
                                        <th scope="row"><%=num%></th> 
                                        <td><%=mname%></td>
                                        <td><%=date%></td>
                                        <td><%=Desc%></td>
                                        <td><%=upvotes%></td>
                                        <td><%=dwnvotes%></td>
                                        <td><!--<select name="Select" onselect="jsfunc();">

                                                <option>--Select--</option>
                                                <option <%//if (status.equals("solved")) {%>selected="selected"<%//}%> value="solved">Solved</option>
                                                <option <%//if (status.equals("in progress")) {%>selected="selected"<%//}%> value="in progress">in progress</option>
                                                <option <%//if (status.equals("pending")) {%>selected="selected"<%//}%> value="pending">pending</option>
                                            </select>--><%=status%></td>
                                            <td><a href="EditComplainServ?id=<%=c.getComplainId()%>">Update</a></td>

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
