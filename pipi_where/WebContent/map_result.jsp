<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>カードからお店を検索</title>
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

	<body class="#ffffff white indigo-text text-lighten-3">
	<div class="container">
	<header>
	<br>

	<nav>
		<div class="nav-wrapper #7986cb indigo lighten-2">
		<a href="#" class="brand-logo">&ensp;カードからお店を検索</a>
		<c:if test="${account!=null}">
		<ul id="nav-mobile" class="right hide-on-med-and-down">
			<li><span class="amber-text text-lighten-1">MY PAGE</span></li>
			<li><a href="mypage"><i class ="material-icons">person</i></a>
			<li>${account.userName}&emsp;</li>
			<li>LastLoginTime: <javatime:format value="${account.lastLoginTime}" pattern="hh:mm:ss" /></li>
			<li><a href="logout.do"><i class="material-icons">exit_to_app</i></a></li>
		</ul>
		</c:if>
		</div>
	</nav>

	<div class="row">

	<div class="col s10">
			<a class="#7986cb indigo lighten-2 waves-effect waves-light  btn-small" href="top">ホーム</a>
			<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="login">ログイン</a>
		 	<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="sign-up">アカウント登録</a>
		 	<a class="#ffca28 amber lighten-1  grey-text text-darken-4 waves-effect waves-light btn-small" href="map_search">カードからお店を検索</a>
		 			<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="card_list.do">カードの特徴を比較</a>
		 			
	</div>
	</div>

	</header>

	<span class="grey-text text-darken-2">
		現在地に近いキャッシュレス決済対応の<br>
		<span class="red-text text-lighten-1">
			${param.name}
		</span>
		を検索中です。
	</span>
	
		<div id="map"></div>
		<script src="https://maps.googleapis.com/maps/api/js?key=api&callback=initMap&libraries=places"></script>
	</div>
	</body>
</html>