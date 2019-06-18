<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
	        <div class="row">
	            <form class="col s12" action="login.do" method="post">
	                <div class="row">
	                	<div class="input-field col s6">
	                    	<input id="card_name" name="cardName" type="text" class="validate"
	                               placeholder="カード名を入力" autofocus> 
	                        <label for="card_name">Cardname</label>
	                    </div>
                	</div>
					<input class="btn waves-effect #d7ccc8 brown lighten-4" type="submit" value="Search">
					<p class="red-text darken-2">${error}</p>
				</form>
				<!-- <div><a href="card-list">まずはカードの特徴を知る♪</a></div> -->
			</div>
		</div>
	</body>
</html>


	