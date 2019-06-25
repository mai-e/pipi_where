
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
		<a href="#" class="brand-logo">&ensp;OSUNEGI　MAP</a>
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
			<a class="#ffca28 amber lighten-1  grey-text text-darken-4 waves-effect waves-light  btn-small" href="top">ホーム</a>
			<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="login">ログイン</a>
		 	<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="sign-up">アカウント登録</a>
		 	<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="map_search">カードからお店を検索</a>
		 			<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="card_list.do">カードの特徴を比較</a>
	</div>
	</div>

	</header>
 
	
	<div class="row">
    	<div class="col s7 m6">
     	<div class="card">
        <div class="card-image">
          <img src="img/inbag.png">
          <span class="card-title">身軽に出かけよう</span>
        </div>
        <div class="card-content">
          <p>
			<span class="fs7">
			<span class="grey-text text-darken-2">
				いま、世間ではミニマリストなるものが流行っている。しかし、現代のITがこのまま進化していくならば、全員がミニマリストになるだろう。
				財布も鞄もいらない。身体ひとつで出かけられる楽しみをささやかに。まずは、キャッシュレス決済から始めよう。
			</span>
			</span>
          </p>
        </div>
        <div class="card-action">
          <a href="https://meti-journal.jp/policy/201810/">経済産業省「キャッシュレス決済が日本を変える」</a>
        </div>
      </div>
    </div>

	<div class="row">
    	<div class="col s7 m6">
     	<div class="card">
        <div class="card-content">
          <p>
			<span class="fs7">
			<span class="grey-text text-darken-2">
				<br>
				会計には5秒あればいい。
				<br>
			</span>
			</span>
          </p>
        </div>
        <div class="card-action">
          <a href="http://localhost:8080/pipi_where/card_list">キャッシュレスの方法を選ぶ</a>
        </div>
        <div class="card-image">
          <img src="img/tokyo.png">
        </div>
      </div>
    </div>
    
	</div>

		<footer>
			<small>Copyright &copy; OSUNEGI CARDMAP. All rights reserved.</small>
		</footer>
		
	</div>
	</div>
	</body>
	</html>