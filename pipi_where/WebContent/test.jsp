<!DOCTYPE html>

<html>
	<head>
		<title>CSS3 Flexbox Example</title>
		<style>
			.outer {
				display: flex;
				width: 90%;
				border: 1px solid blue;
			}
			.inner {
				width: 300px;
				height: 200px;
				margin: 50px;
				border: 1px solid red;
			 }
		</style>
	</head>
	<body>
		<div class="outer">
			<div class="inner">Box1</div>
			<div class="inner">Box2</div>
			<div class="inner">Box3</div>
		</div>
	</body>
</html>