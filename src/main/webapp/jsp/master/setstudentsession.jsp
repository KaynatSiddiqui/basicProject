<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.zomant.util.AppConstants"%>

    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
    <% 
   String AdminType=request.getParameter("usertype");
   request.setAttribute("AdminType", AdminType);
%>
 <c:set var="AdminType" value="${AdminType }" scope="session"  />
 
 
