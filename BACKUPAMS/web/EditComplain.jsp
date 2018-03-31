<%-- 
    Document   : EditComplain
    Created on : 10 Feb, 2018, 4:38:21 PM
    Author     : meet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="reg.*"%>
<!DOCTYPE html>
<%@include file="AdminHeader.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>edit complain</title>
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body  class="cbp-spmenu-push">
        <div class="main-content">
            <div id="page-wrapper">
                <div class="main-page">
                    <div class=" form-grids row form-grids-right">
                        <div class="widget-shadow " data-example-id="basic-forms"> 
                            <div class="form-title">
                                <h4>Edit Complain :</h4>
                            </div>
                            <%                               
                                if (request.getAttribute("complain") != null) {
                                    Complain c = (Complain) request.getAttribute("complain");
                                    Login member = c.getLid();
                                    String status = c.getStatus();
                            %>
                            <div class="form-body">
                                <form class="form-horizontal" action="UpdateComplainServ">
                                    <input type="hidden" value="<%=c.getComplainId()%>" name="idcomplain">
                                    <div class="form-group"> 
                                        <div class="updtlabel">
                                            <label for="inputEmail3" class="col-sm-2 control-label">complain id :</label> </div>
                                        <div class="col-sm-4">  <%=c.getComplainId()%> </div>
                                    </div>
                                    <div class="form-group"> 
                                         <div class="updtlabel">
                                             <label for="inputPassword3" class="col-sm-2 control-label">Member name :</label></div>
                                        <div class="col-sm-4"> <%=member.getUsername()%> </div> 
                                    </div> 
                                    <div class="form-group"> 
                                         <div class="updtlabel">
                                             <label for="inputPassword3" class="col-sm-2 control-label">Date :</label></div>
                                        <div class="col-sm-4"> <%=c.getDate()%> </div> 
                                    </div>
                                    <div class="form-group"> 
                                         <div class="updtlabel">
                                             <label for="inputPassword3" class="col-sm-2 control-label">Description :</label></div>
                                        <div class="col-sm-4"> <%=c.getDescription()%>> </div> 
                                    </div>
                                    <div class="form-group"> 
                                         <div class="updtlabel">
                                             <label for="inputPassword3" class="col-sm-2 control-label">Up votes :</label></div>
                                        <div class="col-sm-4"> <label><%=c.getUpvote()%></label> </div> 
                                    </div>
                                    <div class="form-group"> 
                                         <div class="updtlabel">
                                             <label for="inputPassword3" class="col-sm-2 control-label">Down votes :</label></div>
                                        <div class="col-sm-4"> <label><%=c.getDwnvote()%></label> </div> 
                                    </div>
                                    <div class="form-group"> 
                                         <div class="updtlabel">
                                             <label for="inputPassword3" class="col-sm-2 control-label">Status :</label></div>
                                        <div class="col-sm-4"> <select name="status" >

                                                <option>--Select--</option>
                                                <option <%if (status.equals("solved")) {%>selected="selected"<%}%> value="solved">Solved</option>
                                                <option <%if (status.equals("in progress")) {%>selected="selected"<%}%> value="in progress">in progress</option>
                                                <option <%if (status.equals("pending")) {%>selected="selected"<%}%> value="pending">pending</option>
                                            </select> </div> 
                                    </div>
                                    <div class="form-group"> 
                                         <div class="updtlabel">
                                             <label for="inputPassword3" class="col-sm-2 control-label">Action taken :</label></div>
                                        <div class="col-sm-4"> <textarea name="action" rows="8" class="txtarea" cols="10" placeholder="describe action taken"><%if(c.getActionTaken()!= null)%><%=c.getActionTaken()%></textarea> </div> 
                                    </div>
                                    <div class="col-sm-offset-2"> <button type="submit" class="btn btn-default">Update</button> </div>
                                </form> 
                            </div>
                        </div>
                        <%  }
                        %>
                    </div>
                </div>
            </div>
    </body>
</html>
