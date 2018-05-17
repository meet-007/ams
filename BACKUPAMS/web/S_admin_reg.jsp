<%-- 
    Document   : S_admin_reg
    Created on : 7 Oct, 2017, 4:54:27 PM
    Author     : meet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="css/newcss1.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="js/Validate.js"></script>
    </head>
         <body>
     <div class="container">
       <div class="row">
         <div class="col-md-8 col-md-offset-2">
             <h1>S_Admin_Registration</h1>
            <div class="well">
  <form action="AdminReg">
        <div class="form-group">
            <label for="societyname">Society Name:</label>
            <input type="text" class="form-control" placeholder="Society name" name="name"required>
        </div>
       <label for="societyname">State:</label>  
                <select class="form-control" name="state" required>
                    <option value="Gujarat">Gujarat</option>
                    <option value="Bihar">Bihar</option>
                    <option value="Haryana">Haryana</option>
                    <option value="Jarkahnd">Jharkhand</option>
                    <option value="Goa">Goa</option>
                </select>

      <label for="societyname">City:</label>
                <select class="form-control" name="city" required>
                    <option value="Ahmedabad">Ahemedabad</option>
                    <option value="Surat">Surat</option>
                    <option value="Vadodara">Vadodara</option>
                    <option value="Gandhinagar">Gandhinagar</option>
                </select>
    <div class="form-group">
                    <label for="username">Address:</label>
                    <input type="text" class="form-control"  placeholder=" address " name="address" required>
                </div>    
     
  <div class="form-group">
    <label for="no of division">No of APT </label>
    <input type="number" class="form-control" placeholder="number of apartments" name="noapt" onkeypress="return isNumberKey(event,this);" required>
  </div>
      
   <div class="form-group">
       <label for="firstname">First Name:</label>
       <input type="text" class="form-control" placeholder="FIrst Name"onkeypress="return onlyAlphabets(event,this);" required>
     </div>
   <div class="form-group">
    <label for="Lastname"> Last Name: </label>
    <input type="text" class="form-control" placeholder="Last Name "onkeypress="return onlyAlphabets(event,this);" required>
  </div>
   <div class="form-group">
    <label for="email"> email</label>
    <input type="email" class="form-control" placeholder="email" required>
  </div>
   <div class="form-group">
    <label for="mobile"> Mobile</label>
    <input type="text" class="form-control" placeholder="Mobile" name="mobile" minlength="10" maxlength="10" onkeypress="return isNumberKey(event,this);"required>
  </div>
    <div class="form-group">
    <label for="username"> username</label>
    <input type="text" class="form-control" placeholder=" username " name="uname" required>
    </div>
    <div class="form-group">
    <label for="password">Password</label>
    <input type="password" class="form-control" placeholder="Password " name="pass" required>
  </div>  
    <button type="submit" style="position:relative;top:5px;" class="btn btn-danger">Register</button>
  <br/>
        <br/>
  </form> 
            </div>        
            </div>        
            </div>            
            </div>            
        
    <%@include file="Footer.jsp" %>
    </body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        
</html>
