var map;

function initMap(){
	navigator.geolocation.getCurrentPosition( successFunc , errorFunc) ;	
}

function successFunc(position) {
	map = new google.maps.Map(document.getElementById('map'), { // #sampleに地図を埋め込む
		center: { // 地図の中心を指定
			lat: position.coords.latitude, // 緯度
			lng: position.coords.longitude // 経度
		},
		zoom: 19 // 地図のズームを指定
	});
}

function errorFunc( error )
{
	// エラーコードのメッセージを定義
	var errorMessage = {
		0: "原因不明のエラーが発生しました…。" ,
		1: "位置情報の取得が許可されませんでした…。" ,
		2: "電波状況などで位置情報が取得できませんでした…。" ,
		3: "位置情報の取得に時間がかかり過ぎてタイムアウトしました…。" ,
	} ;

	// エラーコードに合わせたエラー内容をアラート表示
	alert( errorMessage[error.code] ) ;
}
