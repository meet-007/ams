d<%-- 
    Document   : Add_Feedback
    Created on : 28 Jan, 2018, 2:57:55 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="AdminHeader.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Feedback</title>
    </head>
    <body  class="cbp-spmenu-push">
        <div class="main-content">
        <div id="page-wrapper">
            <div class="main-page">
                <div class="container">         
                     <div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Add Feedback :</h4>
						</div>
                    <div class="form-body">
                        <form action=""class="form-horizontal">
                            <div class="form-group">
                                <div class="col-sm-4">
                                <label class="Date" class="col-sm-2 control-label">Date:</label> 
                                <input type="date" class="form-control">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="description">Description:</label></br>
                                <textarea rows="6" cols="50" maxlength="50" ></textarea>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                <label for="rattig">Ratting:</label>
                                <input type="text" class="form-control" id="ratting"placeholder="ratting" name="ratting">
                            </div>
                                </div>
                   
                            <button type="submit" class="btn btn-default">Add/Post</button>
                        </form>
                    </div>
                     </div>
                </div>  
            </div>
        </div>
        </div>
        
        
      
    </body>
</html>
