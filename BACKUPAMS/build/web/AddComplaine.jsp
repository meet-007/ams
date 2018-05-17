<%-- 
    Document   : AddComplaine
    Created on : 28 Jan, 2018, 1:20:39 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="MemberHeader.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Complain</title>
        <script src="js/Validate.js" type="text/javascript"></script>
    </head>
    <body  class="cbp-spmenu-push">
        <div class="main-content">
            <div id="page-wrapper">
                <div class="main-page">
                    <div class="container">         
                        <div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
                            <div class="form-title">
                                <h4>Add Complain :</h4>
                            </div>
                            <div class="form-body">
                                <form action="AddComplain" class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <label for="Date">Date:</label> 
                                            <input type="date" class="form-control" id="date" name="comp_date" required>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="description">Description:</label></br>
                                        <textarea rows="6" cols="50" maxlength="50" name="comp_desc"required></textarea>
                                    </div>
                                   <!-- <div class="form-group">
                                        <label for="Image">Upload Image:</label> 
                                        <input type="file">
                                    </div>-->
                                   <button type="submit" class="btn btn-default">Add/Post</button>
                               
                                </form>
                                <%
                                if(request.getAttribute("msg")!=null){
                                %>
                                <p><%=request.getAttribute("msg")%></p>
                                <%}%>
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
    </body>
</html>

