<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- top -->
<c:import url="/top" />

<!-- 여기에 추가 -->

<div class="container">
	<div class="row">
		<div class="col-md-12 text-center">
			<img src="${pageContext.request.contextPath}/img/corona7(big).png"
				class="img-responsive img-thumbnail">
			<p>
				<br> <br>코로나19 바이러스로 인한 피해를 줄이고자 힘써주시는 <br>모든 분들께 감사의
				인사를 드립니다. <br> <br>저희 코로나7 사이트는&nbsp; <br>『KAKAO MAPS
				API』를 활용하여 개발되었습니다. <br> <br>아래의 Enter를 클릭하시면 <br>코로나19
				확진자들의 위치를 확인하실 수 있습니다.
			</p>
			<br> <br> <a class="btn btn-block btn-lg btn-success"
				href="list">Enter</a>
		</div>
	</div>
</div>
</div>

<c:import url="/foot" />