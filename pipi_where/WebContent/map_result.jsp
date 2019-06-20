<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>検索結果だお♪</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
		<script src="/pipi_where/js/map.js"></script>
		<style>
		#map {
			width: 700px;
			height: 400px;
		}
		</style>
	</head>
	<body class="#efebe9 brown lighten-5 brown-text">
	    <div class="container">
	    <nav>
				<div class="nav-wrapper #a1887f brown lighten-2">
					<a href="#" class="brand-logo">&ensp;使える近くのお店を検索♪</a>
					<ul id="nav-mobile" class="right hide-on-med-and-down">
						<li>${account.userName}&emsp;</li>
						<li>LastLoginTime: <javatime:format value="${account.lastLoginTime}" pattern="hh:mm:ss" /></li>
						<li><a href="logout.do"><i class="material-icons">exit_to_app</i></a></li>
					</ul>
				</div>
			</nav>
		
		
		<div id="map"></div>
		<script src="https://maps.googleapis.com/maps/api/js?key={APIKEY}&callback=initMap"></script>
	</div>
	</body>
</html>