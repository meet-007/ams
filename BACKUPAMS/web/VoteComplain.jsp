<%-- 
    Document   : VoteComplain
    Created on : 31 Mar, 2018, 5:51:27 PM
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
                                        <th>Name</th>
                                        <th>Date</th>
                                        <th>Description</th>
                                        <th>Upvote</th>
                                        <th>Downvote</th>
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
                                                Login login = c.getLid();
                                                SocietyMembers socmem = new GetMemberFrmLid().getSmem(login.getLid());
                                                String name = socmem.getFname() + socmem.getLname();
                                                String date = c.getDate();
                                                String Desc = c.getDescription();
                                                int upvotes = c.getUpvote();
                                                int dwnvotes = c.getDwnvote();
                                    %>
                                    <tr> 
                                        <th scope="row"><%=num%></th> 
                                        <td><%=name%></td>
                                        <td><%=date%></td>
                                        <td><%=Desc%></td>
                                        <td><i class="fa fa-thumbs-o-up"></i><%=upvotes%></td>
                                        <td><i class="fa fa-thumbs-o-down"></i><%=dwnvotes%></td>
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
