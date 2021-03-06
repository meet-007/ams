
<%@page import="Paytm_java.PaytmConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.paytm.merchant.CheckSumServiceHelper"%>
<%
    Enumeration<String> paramNames = request.getParameterNames();

    Map<String, String[]> mapData = request.getParameterMap();
    TreeMap<String, String> parameters = new TreeMap<String, String>();
    String paytmChecksum = "";
    while (paramNames.hasMoreElements()) {
        String paramName = (String) paramNames.nextElement();
        if (paramName.equals("CHECKSUMHASH")) {
            paytmChecksum = mapData.get(paramName)[0];
        } else {
            parameters.put(paramName, mapData.get(paramName)[0]);
        }
    }
    boolean isValideChecksum = false;
    String outputHTML = "";
    String txnid = "";
    String txndate = "";
    String msg = "";
    try {
        isValideChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().verifycheckSum(PaytmConstants.MERCHANT_KEY, parameters, paytmChecksum);
        if (isValideChecksum && parameters.containsKey("RESPCODE")) {
            if (parameters.get("RESPCODE").equals("01")) {
                outputHTML = parameters.toString();
                txnid = parameters.get("TXNID");
                txndate = parameters.get("TXNDATE");
                msg = parameters.get("RESPMSG");
            } else {
                outputHTML = "<b>Payment Failed.</b>";
            }
        } else {
            outputHTML = "<b>Checksum mismatched.</b>";
        }
    } catch (Exception e) {
        outputHTML = e.toString();
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
    </head>
    <body>
        <%= outputHTML%>

        <%=txnid%>
        <%=txndate%>
        <%=msg%>

        <% if (!txnid.equals("")) {
                request.setAttribute("txnid", txnid);
                request.setAttribute("txndate", txndate);
                request.setAttribute("msg", msg);

                RequestDispatcher rd = request.getRequestDispatcher("SavePaymentDetails");
                rd.forward(request, response);
            }else{
            RequestDispatcher rd = request.getRequestDispatcher("PaymentFailed.jsp");
                rd.forward(request, response);
        }
        %>

    </body>
</html>