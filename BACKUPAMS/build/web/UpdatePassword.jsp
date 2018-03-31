<%--
    Document   : UodatePassword
    Created on : 24 Dec, 2017, 11:39:37 AM
    Author     : meet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="reg.*"%>
<!DOCTYPE html>
<%
    Login user= (Login)session.getAttribute("user");
    if(user.getRole().equals("Society member")){
    %>
    <%@include file="MemberHeader.jsp" %>
<%
}else{%>
<%@include file="AdminHeader.jsp" %>
<%}%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="cbp-spmenu-push">
        <div id="page-wrapper">
			<div class="main-page">
         <div class="container">
       <div class="row">
         <div class="col-md-8 col-md-offset-2">
             <h1>Update Password</h1>
            <div class="well">
       <form method="POST" action="UpdatePass">
     <div class="form-group">
         <label for="username">Old password:</label>
         <input type="password" class="form-control" placeholder="Old Password " name="oldpwd">
     </div>
     <div class="form-group">
         <label for="username">New password:</label>
         <input type="password" class="form-control" placeholder="New Password " name="newpwd">
     </div>
     <div class="form-group">
         <label for="username">Confirm New password:</label>
         <input type="password" class="form-control" placeholder="Old Password " name="newcofirm">
     </div>
            <button type="submit" style="position:relative;top:5px;" class="btn btn-danger">Update</button>
       </form>
         </div>
       </div>
   </div>
         </div>     
                        </div>
        </div>
    </body>
</html>
