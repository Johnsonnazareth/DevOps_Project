<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<center><h1>Hello! welcome to Microdegree</h1></center>
	<center><h2>This is Pipeline prject.</h2></center>
	<body>
		<c:url value="/showMessage.html" var="messageUrl" />
		<a href="${messageUrl}">Click to enter</a><br>
		<br><c:url value="/showMessage.html" var="messageUrl" />
		<a href="${messageUrl}">Click to close</a>
	</body>
</html>
