<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<%
	//쿠키 꺼내기 => 쿠키의 키값이 "saveId"가 있다면 해당 value값(사용자아아디)
	//				 을 꺼내서 input name이 userid인 곳에 value값으로 넣어준다.

	Cookie cks[] = request.getCookies();
	String uid = "";
	boolean isChk = false;
	if (cks != null) {
		for (Cookie c : cks) {
			String key = c.getName();//key값
			if (key.equals("saveId")) {
				uid = c.getValue();
				isChk = true;
				break;
			}
		}
	}
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/co_common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/chart_kr.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/co_component.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/lightslider.min.css">

<title>코로나7 - 코로나19 환자 현황 사이트</title>



<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/img/corona7(150).png" />


<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
</head>




<body>
	<div id="layer-popup1"
		style="position: absolute; z-index: 1500; visibility: hidden; text-align: center; background-color: white; top: 50px;">
		<a href="javascript:changePage1();"><img
			src="${pageContext.request.contextPath}/img/info.png"
			class="img-thumbnail" width="640" height="427"></a>
			<br>
			<a href="http://0254.duckdns.org:9090/mask7">이 곳을 클릭하시면 마스크7 사이트로 이동합니다.</a>
		<div class="close-bar" align="right"
			style="background-color: white; border: 3px;">
			<form name="popform1" method="post" action="">
				<span class="left"><input type="checkbox" name="popup" />&nbsp;오늘
					하루 이 창을 열지 않음</span> <a href="javascript:closeLayer1();" title="닫기"
					class="right"><B>&nbsp;[닫기]&nbsp;</B></a>
			</form>
		</div>
	</div>

		<div class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navbar-ex-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="main"><span><img
							src="${pageContext.request.contextPath}/img/corona7(small).png"
							class="img-responsive"></span></a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-ex-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="main">메인화면</a></li>
						<li><a href="list">확진자 현황</a></li>
						<li><a href="covid19">코로나19 정보</a></li>
						<li><a href="http://0254.duckdns.org:9090/mask7">마스크7</a></li>
						<li><a href="developer">DEVELOPER</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="cover">
		<div class="cover-image"></div>

<script>
		//Popup
		if (getCookie("popup_check1") != "done") { // popup_check가 설정안되어있으면 보여주기
			document.getElementById("layer-popup1").style.visibility = "visible"
			$("#layer-popup1").draggable();
		}

		function getCookie(name) //저장된 쿠키구하기
		{
			var nameOfCookie = name + "=";
			var x = 0;
			while (x <= document.cookie.length) {
				var y = (x + nameOfCookie.length);
				if (document.cookie.substring(x, y) == nameOfCookie)

				{
					if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
						endOfCookie = document.cookie.length;
					return unescape(document.cookie.substring(y, endOfCookie));
				}
				x = document.cookie.indexOf(" ", x) + 1;
				if (x == 0)
					break;
			}
			return "";
		}

		function setCookie(name, value, expiredays) { //쿠키 설정
			var todayDate = new Date();
			todayDate.setDate(todayDate.getDate() + expiredays);
			document.cookie = name + "=" + escape(value) + "; path=/; expires="
					+ todayDate.toGMTString() + ";"
			//document.cookie = name + "=" + value + "; path=/; expires=" + todayDate.toGMTString() + ";" 
		}

		function closeLayer1() { // 오늘하루보기가 체크 유무에 따른 쿠기 설정
			if (document.popform1.popup.checked) {
				setCookie("popup_check1", "done", 1);
			}
			$("div#layer-popup1").hide();
		}

		function changePage1() { //만약 팝업1 바로 눌렀을때           
			location.href = "#";
			$("div#layer-popup1").hide();
		}
	</script>