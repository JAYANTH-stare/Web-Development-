<%@ include file="lecturerGiveaway.html" %>
<%@ page import="java.sql.*" %>
<%@ page import="lecturer.*" %>

<%
    String notesSubject = request.getParameter("notesSubject");
    String lecturerName = request.getParameter("lecturerName");
    String phoneNumber = request.getParameter("phoneNumber");
    giveSub gsub = new giveSub(notesSubject,lecturerName,phoneNumber);
        gsub.Display();
        gsub.EnterData();
%>