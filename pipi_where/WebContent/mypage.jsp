<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>${account.userName}のページ</title>
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
		<div class="nav-wrapper #006064 cyan darken-4">
		<a href="#" class="brand-logo">&ensp;${account.userName}のページ</a>
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
		<a class="#006064 cyan darken-4 waves-effect waves-light  btn-small" href="top">ホーム</a>
		<a class="#006064 cyan darken-4 waves-effect waves-light btn-small" href="login">ログイン</a>
		<a class="#006064 cyan darken-4 waves-effect waves-light btn-small" href="sign-up">アカウント登録</a>
		<a class="#006064 cyan darken-4 waves-effect waves-light btn-small" href="map_search">カードからお店を検索</a>
		<a class="#006064 cyan darken-4 waves-effect waves-light btn-small" href="card_list.do">カードの特徴を比較</a>
	</div>
	</div>
	</header>
	
	<div class="row">
	<div class="col s6">
	<form action="register.do" method="post">
	<c:forEach var="list" items="${cardList}">
		<c:forEach var="card" items="${account.cardList}">
		 <c:if test="${list.name == card.name }">
		 	<c:set var="checked" value="checked='checked' disabled='disabled'"/>
		 </c:if>
   		</c:forEach>
		 <p>
	      <label>
	        <input type="checkbox" class="filled-in" name="checkbox1" value="${list.name}" ${checked} />
	        <span>${list.name}</span>	
       	 	<c:set var="checked" value=""/>		 
	      </label>
   		 </p>
   		 
	</c:forEach>
       	<button class="btn waves-effect #e8eaf6 indigo lighten-5" name="add">
      	<span class="grey-text text-darken-4">カードを登録</span>
      	</button>
</form>
</div>


<div class="col s6">
<form action="delete.do" method="post">
	<c:forEach var="list" items="${account.cardList}">
		 <p>
	      <label>
	      
	        <input type="checkbox" class="filled-in" name="checkbox2" value="${list.name}"/>
	        <span>${list.name}</span>
       	 	<c:set var="checked" value=""/>		 
       	 
	      </label>
   		 </p>
   		 
	</c:forEach>
      	<button class="btn waves-effect #e8eaf6 indigo lighten-5" name="add">
      	<span class="grey-text text-darken-4">カードを削除</span>
      	</button>
	</form>
	</div>
	</div>
	
	</div>		
	</body>
</html>