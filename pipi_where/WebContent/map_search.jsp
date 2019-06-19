<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>使える近くのお店を検索♪</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

		<script>
		  $(document).ready(function(){
		    $('select').formSelect();
		  });
		</script>
	
	</head>
	<body class="#efebe9 brown lighten-5 brown-text">
	    <div class="container ">
	    <nav>
				<div class="nav-wrapper #a1887f brown lighten-2">
					<a href="#" class="brand-logo">使える近くのお店を検索♪</a>
					<ul id="nav-mobile" class="right hide-on-med-and-down">
						<li>${account.userName}&emsp;</li>
						<li>LastLoginTime: <javatime:format value="${account.lastLoginTime}" pattern="hh:mm:ss" /></li>
						<li><a href="logout.do"><i class="material-icons">exit_to_app</i></a></li>
					</ul>
				</div>
			</nav>
	        <div class="row">
	            <form class="col s12" action="login.do" method="post">
	                <div class="row">
	                	<div class="input-field col s6">
	                        <label for="card_name">Cardname</label>
	                    </div>
                	</div>
                	
                	<select name="cardlist">
                	<option value="linepay">LINEPay</option>
                	<option value="rakutenedy">楽天Edy</option>
                	<option value="paypay">PayPay</option>
                	<option value="origamipay">origamiPay</option>
                	<option value="suica">Suica</option>
                	<option value="nanaco">nanaco</option>
                	</select>
                	
					<input class="btn waves-effect #d7ccc8 brown lighten-4" type="submit" value="Search">
					<p class="red-text darken-2">${error}</p>
				</form>
				<!-- <div><a href="card-list">まずはカードの特徴を知る♪</a></div> -->
				<div id="map"></div>
			</div>
		</div>
	</body>
</html>


	