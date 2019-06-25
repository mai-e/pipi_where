<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>カードの特徴を比較</title>
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
		<a href="#" class="brand-logo">&ensp;カードの特徴を比較</a>
		<c:if test="${account!=null}">
		<ul id="nav-mobile" class="right hide-on-med-and-down">
			<li><span class="amber-text text-lighten-1">MY PAGE</span></li>
			<li><a href="mypage"><i class ="material-icons">person</i></a></li>
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
		<a class="#7986cb indigo lighten-2 waves-effect waves-light btn-small" href="map_search">カードの特徴を比較</a>
		<a class="#ffca28 amber lighten-1  grey-text text-darken-4 waves-effect waves-light btn-small" href="card_list.do">カードを選ぶ</a>
	</div>
	</div>

	</header>


	<br>

	<form action="card_list.do" method="post">
		<input class="btn waves-effect #e8eaf6 indigo lighten-5" type="submit" name="variety" value="使える店">
		<input class="btn waves-effect #e8eaf6 indigo lighten-5" type="submit" name="rate" value="還元率">
	</form>

                <c:forEach var="list" items="${cardList}">
                	<table>
                	<tr>
                		<td>
                		${list.name}<br>
                		<img src="img/${list.cardName}.webp" width="120px" height="40%"><br>
                		</td>
                		<td>
						使える店：${list.usableStoreList.size()}<br>
                		還元率：${list.rate}<br>
                		チャージ方法：${list.charge }
                		</td>
						<td>
                		<a  href= "${list.url}" target="_blank">詳しく知る</a><br>
						</td>
                	</tr>
                	</table>
				</c:forEach>
		</div>
	</body>
	</html>