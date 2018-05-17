    <%-- 
    Document   : APT
    Created on : 24 Dec, 2017, 11:34:44 AM
    Author     : Dell
--%>

<%@page import="java.util.Iterator"%>
<%@page import="reg.SocietyMembers"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.AbstractList"%>
<!DOCTYPE html>
<%@include file="AdminHeader.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/Validate.js" type="text/javascript"></script>

    </head>
    <body>
         <div id="page-wrapper">
            <div class="main-page">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2">
                                <h1>Link Apartments</h1>
                                <div class="well">
                                    <form action="AddAptDetails">
                                        <label for="societyname">Select Owner:</label>
                                        <select class="form-control" name="selectowner" required>
                                            <option></option>
                                            <%
                                                if(request.getAttribute("memberlist")!=null)
                                                        {
                                                ArrayList<SocietyMembers> memberlist = (ArrayList) request.getAttribute("memberlist");
                                                Iterator it = memberlist.iterator();
                                                String name = "";
                                                int id = 0;
                                                while (it.hasNext()) {
                                                    SocietyMembers sm = (SocietyMembers) it.next();
                                                    name = sm.getFname() + " " + sm.getLname();
                                                    id = sm.getMemId();
                                            %>
                                            <option value="<%=id%>"><%=name%></option>
                                            <%
                                                }
                                            %>
                                        </select>
                                        </br>
                                        <label for="societyname">Select Occupier:</label>

                                        <select class="form-control" name="selectoccupier" required>
                                            <option></option>
                                            <%
                                                Iterator it1 = memberlist.iterator();
                                                while (it1.hasNext()) {
                                                    SocietyMembers sm = (SocietyMembers) it1.next();
                                                    name = sm.getFname() + " " + sm.getLname();
                                                    id = sm.getMemId();
                                            %>
                                            <option value="<%=id%>"><%=name%></option>
                                            <%
                                                }
                                                        }
                                            %>
                                        </select>
                                        </br>
                                        <div class="form-group">
                                            <label for="societyname">Number:</label>
                                            <input type="text" class="form-control" placeholder="Number" name="aptno" onkeypress="return isNumberKey(event,this);"required>
                                        </div>
                                        <button type="submit" style="position:relative;top:5px;" class="btn btn-danger">Add</button>
                                    </form>
                                            <%
                                                String msg="";
                                            if(request.getAttribute("msg")!=null)
                                            {
                                                %>
                                                <%=msg%>
                                                <%
                                            }
                                            %>
                                </div>        
                            </div>        
                        </div>            
                    </div>            
                                    
            </div>
         </div>
          </body>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</html>
