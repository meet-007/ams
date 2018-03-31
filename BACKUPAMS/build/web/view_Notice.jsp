<%-- 
    Document   : view_Notice
    Created on : 28 Jan, 2018, 2:37:51 PM
    Author     : Dell
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="MemberHeader.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View_Notice Table</title>
    </head>
    <body  class="cbp-spmenu-push">
        <div class="main-content">
            <div id="page-wrapper">
                <div class="main-page">
                    <div class="tables">
                        <div class="panel-body widget-shadow" data-example-id="hoverable-table"> 

                            <h4>View_Notice Table:</h4>



                            <table class="table table-hover"> 
                                <thead> 
                                    <tr> 
                                        <th>NO</th> 
                                        <th>Date</th> 
                                        <th>Description</th>
                                    </tr> 
                                </thead> 
                                <tbody> 
                                    <%    if (request.getAttribute("list") != null) {
                                            ArrayList list = (ArrayList) request.getAttribute("list");
                                            Iterator it = list.iterator();
                                            int num = 0;
                                            while (it.hasNext()) {
                                                num++;
                                                Notice n = (Notice) it.next();
                                                String date = n.getDate();
                                                String Desc = n.getDescription();
                                    %>
                                    <tr> 
                                        <th scope="row"><%=num%></th> 
                                        <td><%=date%></td>
                                        <td><%=Desc%></td>
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
    </body>
</html>

