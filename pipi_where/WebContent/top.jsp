<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>OSUNEGI CARDMAP</title>
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
			<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
		</head>

	<body class="#34314c navy lighten-5 navy-text">
	<div class="container">
	<div class="row">

	<header>
	<br>
	<nav>
		<div class="nav-wrapper #7986cb indigo lighten-2">
		<a href="#" class="brand-logo">&ensp;おすネギ的カードマップ</a>
		<c:if test="${account!=null}">
		<ul id="nav-mobile" class="right hide-on-med-and-down">
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
		<a class="#ffca28 amber lighten-1 grey-text text-darken-4 waves-effect waves-light  btn-small" href="top">ホーム</a>
		<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="login">ログイン</a>
		<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="sign-up">アカウント登録</a>
		<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="map_search">カードからお店を検索</a>
		<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="card_list.do">カードを選ぶ</a>
		
	</div>
	</div>
	</header>
	</div>  

			<h5>今までにない身軽さを！</h5>

			<img src="img/atm.png" width="45" height="45" alt="ATM">
			ATMに<br>
			駆け込む必要がなくなります
			<br>
			
			<img src="img/clock.png" width="45" height="45" alt="clock">
			お財布をしまう時間も<br>
			必要なくなります
			<br>
			
			<img src="img/card.png" width="45" height="45" alt="CARD">
			カードまたは<br>
			スマートフォンをかざすだけ
			<br>


		<footer>
			<small>Copyright &copy; OSUNEGI CARDMAP. All rights reserved.</small>
		</footer>
		
	</div>
	</body>
	</html>