<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>おすネギのカードマップ</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

	</head>

	<body class="#ffffff white indigo-text text-lighten-3">
	<div class="container">
	<header>
	<br>

	<nav>
		<div class="nav-wrapper #7986cb indigo lighten-2">
		<a href="#" class="brand-logo">&ensp;トップページ</a>
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
			<a class="#ffca28 amber lighten-1  grey-text text-darken-4 waves-effect waves-light  btn-small" href="top">ホーム</a>
			<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="login">ログイン</a>
		 	<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="sign-up">アカウント登録</a>
		 	<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="map_search">カードからお店を検索</a>
		 	<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="card_list.do">カードを選ぶ</a>
	</div>
	</div>

	</header>
 
	
	<div class="row">
    	<div class="col s6 m6">
     	<div class="card">
        <div class="card-image">
          <img src="img/inbag.png">
          <span class="card-title">Card Title</span>
        </div>
        <div class="card-content">
          <p>I am a very simple card. I am good at containing small bits of information.
          I am convenient because I require little markup to use effectively.</p>
        </div>
        <div class="card-action">
          <a href="#">This is a link</a>
        </div>
      </div>
    </div>

		<div class="col s6 m6">
		<div class="card-panel #00796b teal darken-2 teal">
		<span class="white-text">
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
			
		</span>
		</div>
		</div>
	</div>

		<footer>
			<small>Copyright &copy; OSUNEGI CARDMAP. All rights reserved.</small>
		</footer>
		
	</div>
	</body>
	</html>