<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- ##### Footer Area Start ##### -->
<footer class="section section-primary">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<h1>CORONA 7</h1>
				<p contenteditable="true">
					<br>확진자 현황은 매일 수동으로 업데이트 되기 때문에 최신 정보와 상이할 수 있습니다. <br>androidapk@naver.com
					<br>최 원 영 <br>

				</p>
				<form role="aform" name="aform" id="aform" action="">
				<a href="javascript:admin()" style="color: gray;">관리자 페이지</a>
				<input type="hidden" class="form-control" id="pwd" name="pwd" placeholder="Password" readonly="readonly">
        		</form>
			</div>
			<div class="col-sm-6">
				<p class="text-info text-right">
					<br> <br>
				</p>
				<div class="row">
					<div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
						<a href="#"><i
							class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a> <a href="#"><i
							class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a> <a href="#"><i
							class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a> <a href="#"><i
							class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 hidden-xs text-right">
						<a href="#"><i
							class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a> <a href="#"><i
							class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a> <a href="#"><i
							class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a> <a href="#"><i
							class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>




<script type="text/javascript">
			var admin = function() {

				adminchk=prompt("관리자 코드").trim();
				if(!adminchk){
					alert("관리자 코드를 입력하세요");
					return;
				}else{
					aform.pwd.value=adminchk;
					aform.method = "POST";
					aform.action = "admin";
					aform.submit();
				}
				
			}
		</script>


</body>

</html>
