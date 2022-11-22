<%@page import="ecomm.connection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<%@include file="includes/head.jsp" %>
</head>
<body>
<%@include file="includes/navbar.jsp" %>

<% out.print(DBConnection.getConnection()); %>

<%@include file="includes/footer.jsp" %>
</body>
</html>