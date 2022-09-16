<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@page import="com.zomant.util.AppConstants"%>

	<%@include file="/jsp/master/validatesession.jsp" %> 

<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
      <title>Skygets</title>
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="google-site-verification" content="" />
      <meta name="author" content=""/>
      <!-- Favicon -->
      <%-- <link rel="shortcut icon" href="favicon.ico">
      <link rel="icon" href="<%=request.getContextPath()%>/assets/images/logo/favicon.ico" type="image/x-icon">
       --%>
      <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
      
      <!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
      <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/dist/css/jquery-ui.css">
      
      <!-- Data table CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
      <!-- Fancy-Buttons CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/fancy-buttons.css" rel="stylesheet" type="text/css">
      <!-- bootstrap-select CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>
      <!-- Custom CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/style.css" rel="stylesheet" type="text/css">
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/custom.css" rel="stylesheet" type="text/css">
      <!-- Fontawesome Icons CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/fontawesome.min.css" rel="stylesheet">
      <!-- Flat Icons CSS -->
      <link href="<%=request.getContextPath()%>/assets/css/flaticons/css/flaticon.css" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
      <link href="<%=request.getContextPath()%>/assets/css/dist/css/default.css" rel="stylesheet" type="text/css">
       <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/alertify.core.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/csstestscreen/alertify.default.css">
      <link href="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katex.min.css" />
     <style>	.parsley-errors-list{		color:red;	} .modal-backdrop{position:relative !important;}</style>

   </head>
   <body>
      <div class="loader">
      
      </div>