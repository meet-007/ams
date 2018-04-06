<%-- 
    Document   : M_Cal
    Created on : 28 Jan, 2018, 1:44:51 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="AdminHeader.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Maintenance Calculation</title>
    </head>
    <body  class="cbp-spmenu-push">
        <div class="main-content">
            <div id="page-wrapper">
                <div class="main-page">
                    <div class="container">         
                        <div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
                            <div class="form-title">
                                <h4>Maintenance Calculation:</h4>
                            </div>
                            <div class="form-body">
                                <form action="cal_maintenance" class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <label class="Date" class="col-sm-2 control-label">Date:</label> 
                                            <input type="date" class="form-control" name="ndate">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="Description"> Description of expenditure:</label></br>
                                        <textarea rows="6" cols="50" maxlength="50" name="des"></textarea>
                                    </div>
                                    <div class="form-group">
                                      <label for="amount" class="col-md-1">Amount:</label>
                                        <div class="col-md-2">
                                            <input type="number" class="form-control" id="amount" name="num">
                                        </div>
                                    </div>
                                  <!--  <div class="form-group">
                                        <label for="typeofmaintenance" class="col-md-1">Types of Maintenance</label>
                                        <div class="col-md-4">
                                            <select name="Select">
                                                <option>Planned</option>
                                                <option>UnPlanned</option>
                                            </select>
                                        </div>
                                    </div>-->
                                    <button type="submit" class="btn btn-default">Add</button>
                                    <button type="submit" class="btn btn-default">Calculate</button>

                                </form>
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
        </div>



    </body>
</html>
