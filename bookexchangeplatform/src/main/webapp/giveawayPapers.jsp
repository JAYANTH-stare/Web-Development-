<%@ include file="giveawayPapers.html" %>
<%@ page import="java.sql.*" %>
<%@ page import="questionpapers.*" %>

<%
    String itemName = request.getParameter("papersSubject");
    String phoneNumber = request.getParameter("papersPhoneNumber");
    String name = request.getParameter("papersName");
    papersSub psub = new papersSub(itemName,phoneNumber,name);
        psub.Display();
        psub.EnterData();
%>