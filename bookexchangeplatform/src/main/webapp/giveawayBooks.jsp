<%@ include file="giveawayBooks.html" %>
<%@ page import="java.sql.*" %>
<%@ page import="books.*" %>

<%
    String itemName = request.getParameter("itemName");
    String phoneNumber = request.getParameter("phoneNumber");
    String price = request.getParameter("price");
    String name = request.getParameter("name");
    giveawaySub gsub = new giveawaySub(itemName,phoneNumber,price,name);
    gsub.Display();
    gsub.EnterData();
%>

