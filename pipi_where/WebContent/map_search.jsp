<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>キャッシュレス決済可能な店舗を探す</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
		<link rel="stylesheet" href="css/style.css"/>
		<script>
		  $(document).ready(function(){
		    $('select').formSelect();
		  });
		</script>

	</head>

	<body class="#ffffff white indigo-text text-lighten-3">
	<div class="container">

	<header>
	<br>

	<nav>
		<div class="nav-wrapper #006064 cyan darken-4">
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
			<a class="#006064 cyan darken-4 waves-effect waves-light  btn-small" href="top">ホーム</a>
			<a class="#006064 cyan darken-4 waves-effect waves-light btn-small" href="login">ログイン</a>
		 	<a class="#006064 cyan darken-4 waves-effect waves-light btn-small" href="sign-up">アカウント登録</a>
		 	<a class="#80cbc4 teal lighten-3 waves-effect waves-light btn-small" href="map_search">カードからお店を検索</a>
		 	<a class="#006064 cyan darken-4 waves-effect waves-light btn-small" href="card_list.do">カードの特徴を比較</a>
	</div>
	</div>

	</header>

	<c:if test="${account==null}">
		<span class="red-text text-lighten-1">
		<span class="fs7">
			<a href="login"><span class="indigo-text text-lighten-2">
				ログイン
			</span></a>
			後に所有しているカードが選択可能となります。<br>
			また、ゲストでログインをするとすべてのカードが選択可能となります。
		</span>
		</span>
	</c:if>
	<br>
	        <div class="row">
	            <form class="col s12" action="search.do" method="post">
	                <div class="row">
	                	<div class="input-field col s6">
	                        <label for="card_name">Cardname</label>
	                    </div>
                	</div>

                <select name="cardList" onChange="this.form.submit()">
				<c:if test="${usableStoreList==null}">
					<option value ="" selected></option>				
				</c:if>
                <c:forEach var="list" items="${account.cardList}">
                	<c:if test="${selectedCard==list.name}">
                		<c:set var="selected" value="selected"/>
                	</c:if>
					<option value="${list.name}" ${selected}>${list.name}</option>
					<c:set var="selected" value=""/>
				</c:forEach>
                </select>
				</form>
				<br>
				<c:forEach var="list" items="${usableStoreList}">
						<a href="map_result?name=${list.storeJpn}">
							<button class="btn waves-effect #ffffff white grey-text text-darken-4" type="submit">
								<img src="img/${list.storeName}.webp"  width="25px" height="30px">
								${list.storeJpn}
							</button>
						</a>
				</c:forEach>
			</div>
		</div>

	</body>
</html>


