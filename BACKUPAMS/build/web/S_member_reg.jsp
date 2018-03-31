<%-- 
    Document   : S_member_reg
    Created on : 13 Dec, 2017, 9:26:01 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="AdminHeader.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="page-wrapper">
            <div class="main-page">
                <h2>Add Society members</h2>
                <br/>
                <form role="form" action="MemberReg">
                    <div class="form-group">
                        <label for="exampleInput"> First Name:</label>
                        <input type="text" class="form-control" id="exampleInput" placeholder="Enter First Name" name="fname">
                    </div>
                    <div class="form-group">
                        <label for="exampleInput"> Last Name: </label>
                        <input type="text" class="form-control" id="exampleInput" placeholder="Enter Last Name " name="lname">
                    </div>
                    <div class="form-group">
                        <label for="exampleInput"> Username:</label>
                        <input type="text" class="form-control" id="exampleInput" placeholder=" username " name="uname">
                    </div>
                
                <div class="form-group">
                    <label for="exampleInput">Password:</label>
                    <input type="password" class="form-control" id="exampleInput" placeholder="Password " name="pwd">
                </div> 
               <!-- <div class="form-group">
                    <label for="exampleInputSocietyName">Society: </label>
                    <input type="text" class="form-control" id="exampleInputSocietyName" value="" placeholder="Society" />
                </div>-->
                <div class="form-group">
                    <label for="exampleInput"> Email:</label>
                    <input type="text" class="form-control" id="exampleInput" placeholder="email" name="email">
                </div>
               <div class="form-group">
                    <label for="exampleInput"> Mobile:</label>
                    <input type="text" class="form-control" id="exampleInput" placeholder="mobile" name="mobile">
                </div>
             <!--   <div class="form-group">
                    <label for="exampleInput"> Image:</label>
                    <input type="text" class="form-control" id="exampleInput" placeholder="Image">
                </div>-->
             <div class="form-group">
               <label for="exampleInput"> Member Type:</label> 
                <select class="form-control" name="memtype">
                    <option value="Owner">Owner</option>
                    <option value="Tenant">Tenant</option>
                </select>
             </div>
             <!--   <div class="form-group">
                    <label for="exampleInput">Id Proof:</label>
                    <input type="text" class="form-control" id="exampleInput" placeholder="Id Proof">
                </div>-->
                </br>
                </br>   
                <button type="submit" class="btn btn-default">Register</button>
            </form>
      </div>
    </div>


</body>
</html>
