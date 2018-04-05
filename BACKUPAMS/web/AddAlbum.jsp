<%-- 
    Document   : AddAlbum
    Created on : 5 Apr, 2018, 1:42:52 AM
    Author     : meet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="AdminHeader.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add album</title>
    </head>
     <body  class="cbp-spmenu-push">
        <div class="main-content">
        <div id="page-wrapper">
            <div class="main-page">
                <div class="container">         
                     <div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Add  Album :</h4>
						</div>
                    <div class="form-body">
                        <form action="AddPhotos"class="form-horizontal" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <div class="col-sm-4">
                                <label class="Date" class="col-sm-2 control-label">Event Name</label> 
                                <input type="text" class="form-control" name="event">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="societyname">Select multiple images:</label></br>
                                <input type="file" name="myimg" multiple>
                            </div>
                            <button type="submit" class="btn btn-default">Add</button>
                        </form>
                    </div>
                     </div>
                </div>  
            </div>
        </div>
        </div>
        
        
      
    </body>
</html>
