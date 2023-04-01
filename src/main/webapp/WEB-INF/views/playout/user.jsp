<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><decorator:title default="Master-layout"/></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->
<link href="<c:url value="/assets/user/css/bootstrap.css"/>" rel="stylesheet" />
<!-- Customize styles -->
<link href="<c:url value="/assets/user/style.css"/>" rel="stylesheet" />
<!-- font awesome styles -->
<link href="<c:url value="/assets/user/font-awesome/css/font-awesome.css"/>" rel="stylesheet">

<link href="<c:url value="/assets/user/font-awesome/css/font-awesome-ie7.min.css"/>" rel="stylesheet">


<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<decorator:head/>

<!-- Favicons -->
<link rel="shortcut icon"
	href="<c:url value="/assets/user/ico/favicon.ico"/>">
</head>
<body>
	
<%@include file= "/WEB-INF/views/playout/user/header.jsp"%>

	<decorator:body/>

<%@include file= "/WEB-INF/views/playout/user/footer.jsp"%>

	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<c:url value="/assets/user/js/jquery.js"/>"></script>
	<script src="<c:url value="/assets/user/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/jquery.easing-1.3.min.js"/>"></script>
	<script
		src="<c:url value="/assets/user/js/jquery.scrollTo-1.4.3.1-min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/shop.js"/>"></script>
</body>
</html>