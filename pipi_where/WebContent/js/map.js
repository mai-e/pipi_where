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
	var latlng = new google.maps.LatLng( position.coords.latitude , position.coords.longitude)
	var arg = new Object;
	var pair=location.search.substring(1).split('&');
	for(var i=0;pair[i];i++) {
	    var kv = pair[i].split('=');
	    arg[kv[0]]=kv[1];
	}
    var request = {
    		keyword:arg[name],
    		location: latlng,
    	    radius: '500',
          };

          var service = new google.maps.places.PlacesService(map);

          service.nearbySearch(request, function(results, status) {
            if (status === google.maps.places.PlacesServiceStatus.OK) {
              for (var i = 0; i < results.length; i++) {
                createMarker(results[i]);
              }
              console.log(results.length)

              map.setCenter(results[0].geometry.location);
            }else{
            	console.log(status)
            }
          });
}
function getParam(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
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
function createMarker(place) {
    var marker = new google.maps.Marker({
      map: map,
      position: place.geometry.location
    });

    google.maps.event.addListener(marker, 'click', function() {
      infowindow.setContent(place.name);
      infowindow.open(map, this);
    });
  }
