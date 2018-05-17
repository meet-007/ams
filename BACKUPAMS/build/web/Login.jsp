<%-- 
    Document   : Login
    Created on : 14 Oct, 2017, 5:50:44 PM
    Author     : meet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Header.jsp" %>
<html>
    <head>
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="css/newcss.css" rel="stylesheet" type="text/css"/>
        <script src="js/Validate.js" type="text/javascript"></script>
    
    </head>


<body>
  <div class="container">
       <div class="row">
         <div class="col-md-8 col-md-offset-2">
             <h1>Login Form</h1>
            <div class="well">
                <form action="Login" role="form" method="POST">
                     <img src="images/download.jpg" height="100" width="100" style="border-radius:50px;margin-left:100px;" alt="Cinque Terre">           
             <div class="form-group">
                     <label for="username">UserName:</label>
                     <input type="text" class="form-control"placeholder="username" name="username" required>
               </div>
                 <div class="form-group">
                     <label for="password">Password:</label>
                     <input type="password" class="form-control" placeholder="Password " name="password" required>
               </div>
                 <div class="checkbox">
                     <label><input type="checkbox">Remember me</label>
               </div>
                <button type="submit" style="position:relative;top:5px;" class="btn btn-danger">SignIn</button>
             </form>  
                
         </div>
       </div>
   </div>
    </body>


        </br>
        <div>
        </div>
        <%
        String msg="";
        if(request.getAttribute("msg")!=null)
        {
            msg=request.getAttribute("msg").toString();
        %>
        <%=msg%>
        <%
        }
        %>

</html>
            <%@include file="Footer.jsp" %>

