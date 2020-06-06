<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- top -->
<c:import url="/top"/>  

<!-- 여기에 추가 -->


<div class="container">
	<div class="row">
		<h1 class="text-center" style="color: #000000;">DEVELOPER</h1>
		<br>
		<div class="col-md-12 text-center">
                	<div id="map_canvas"
					style="width: 100%; height: 400px; margin: 0px;"></div>
					<br>
					<div class="row" >
					<div class="col-md-6" style="font-weight: bold; font-size: 20px;">
					저희 코로나7 사이트는
					<br>
					「Kakao Maps API」를 활용해 개발되었습니다.
					<br>
					확진자 현황은 매일 수동으로 업데이트 되기 때문에
					<br>
					최신 정보와 상이할 수 있습니다.
					<br>
					저희 사이트에 방문해주셔서
					<br>
					감사합니다.
					</div>
					<div class="col-md-2">
						
						<img
							src="${pageContext.request.contextPath}/img/me.jpg"
							class="img-circle img-responsive">
					</div>
					<div class="col-md-4">
						<h4 class="text-center" style="font-weight: bold; font-size: 20px;">최 원 영</h4>
						<span class="text-left text-success" style="font-weight: bold; font-size: 20px;">010 - **** - ****</span><br>
						<span class="text-left text-primary" style="font-weight: bold; font-size: 20px;">androidapk@naver.com</span><br>
						<span class="text-left" style="font-weight: bold; font-size: 20px;">
							하루빨리 <br>코로나19가 종식되었으면 좋겠습니다.
						</span>
					</div>
					</div>
                </div>
	</div>
</div>
</div>
<br>


<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCKsUUTbcO8B_OqKncUxmnpnpZ3QnrSttg&callback=initMap"
	async defer></script>

<script>
	function initialize() {
		var myLatlng = new google.maps.LatLng(37.673328, 126.753973);
		var mapOptions = {
			zoom : 14,
			center : myLatlng,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		}
		var map = new google.maps.Map(document.getElementById('map_canvas'),
				mapOptions);
		var marker = new google.maps.Marker({
			position : myLatlng,
			map : map,
			title : "map"
		});
	}
	window.onload = initialize;
</script>


<c:import url="/foot" />