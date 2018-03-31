<%-- 
    Document   : AddNotice
    Created on : 28 Jan, 2018, 12:12:24 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="AdminHeader.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Notice</title>
    </head>
    <body  class="cbp-spmenu-push">
        <div class="main-content">
        <div id="page-wrapper">
            <div class="main-page">
                <div class="container">         
                     <div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Add  Notice :</h4>
						</div>
                    <div class="form-body">
                        <form action="Addnotice"class="form-horizontal">
                            <div class="form-group">
                                <div class="col-sm-4">
                                <label class="Date" class="col-sm-2 control-label">Date:</label> 
                                <input type="date" class="form-control" name="ndate">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="societyname">Description:</label></br>
                                <textarea rows="6" cols="50" maxlength="50" name="des"></textarea>
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
