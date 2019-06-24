<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>アカウント登録</title>
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
		<img src="img/logo.png" alt="logo" width="50" height="50">
		<a href="#" class="brand-logo">&ensp;アカウント登録</a>
		<ul id="nav-mobile" class="right hide-on-med-and-down">
			<li>${account.userName}&emsp;</li>
			<li>LastLoginTime: <javatime:format value="${account.lastLoginTime}" pattern="hh:mm:ss" /></li>
			<li><a href="logout.do"><i class="material-icons">exit_to_app</i></a></li>
		</ul>
		</div>
	</nav>

	<div class="row">

	<div class="col s10">
		<a class="#ffca28 amber lighten-1 grey-text text-darken-4 waves-effect waves-light  btn-small" href="top">ホーム</a>
		<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="login">ログイン</a>
		<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="map_search">カードからお店を検索</a>
		<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="card_list">カードを選ぶ</a>
	</div>
	</div>

	</header>

			<div class="row">
				<form class="col s12" action="sign-up.do" method="post">
					<div class="row">
						<div class="input-field col s6">
							<input id="user_name" name="userName" type="text" class="validate" 
							       placeholder="input your name" autofocus required>
							<label for="user_name">Username</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s6">
							<input id="password" name="password1" type="password"
								   class="validate" required>
							<label for="password">Password</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s6">
							<input id="password" name="password2" type="password"
								   class="validate" required>
						    <label for="password">Confirm　Password</label>
						</div>
					</div>
					<input class="btn waves-effect #d7ccc8 brown lighten-4"
						   type="submit" value="Sign Up">
					<p class="red-text darken-2">${error}</p>
				</form>
			</div>
		</div>
		</div>
	</body>
</html>