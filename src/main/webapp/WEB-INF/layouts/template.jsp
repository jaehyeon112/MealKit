<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>b
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<tiles:insertAttribute name="title"></tiles:insertAttribute>
<link rel="stylesheet" href="css/etc.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
</head>
<body>
	<!-- nav 겸 header -->
	<tiles:insertAttribute name="header"></tiles:insertAttribute>
	<!-- body 부분 -->
	<tiles:insertAttribute name="body"></tiles:insertAttribute>
	<!-- footer 부분 -->
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	<!-- 기능구현완료 -->
</body>
</html>