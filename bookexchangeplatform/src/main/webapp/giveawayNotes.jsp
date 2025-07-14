<%@ include file="giveawayNotes.html" %>
<%@ page import="java.sql.*" %>
<%@ page import="notes.*" %>

<%
    String itemName = request.getParameter("notesSubject");
    String phoneNumber = request.getParameter("notesPhoneNumber");
    String name = request.getParameter("notesName");
    notesSub nsub = new notesSub(itemName,phoneNumber,name);
        nsub.Display();
        nsub.EnterData();
%>