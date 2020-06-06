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
            <img src="${pageContext.request.contextPath}/img/corona7(big).png" class="img-responsive img-thumbnail">
            <br>&nbsp;
            <br>관리자 페이지
            <br>
            <br>- 확진자 등록 -
            <br>&nbsp;
            <form class="form-horizontal" role="form" name="frm" method="post" action="register"
			onsubmit="return onSubmit()">
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="latitude" class="control-label">위도값</label>
                </div>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="latitude" name="latitude" placeholder="위도값을 입력하세요">
                  <span id="latitudeCheck" class="pull-right joinCheck"></span>
                </div>
              </div>
              <div class="form-group has-feedback">
                <div class="col-sm-2">
                  <label for="longitude" class="control-label">경도값</label>
                </div>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="longitude" name="longitude" placeholder="경도값을 입력하세요">
                  <span id="longitudeCheck" class="pull-right joinCheck"></span>
                </div>
              </div>
              <div class="form-group has-feedback">
                <div class="col-sm-2">
                  <label for="longitude" class="control-label">확진자 정보</label>
                </div>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="info" name="info" placeholder="확진자 정보를 입력하세요">
                </div>
              </div>
              <div class="form-group">
                <div>
                  <br>&nbsp;
                  <button type="submit" class="btn btn-block btn-danger">확진자 등록</button>
                </div>
              </div>
            </form>
            <br>
            - 최근 등록된 확진자 목록 (5개만 출력) -
            <br>
            <br>
            <table class="table table-bordered table-hover table-striped text-center" id="table">
							<thead>
								<tr>
									<th width="10%" class="text-center">Index</th>
									<th width="15%" class="text-center">위도</th>
									<th width="15%" class="text-center">경도</th>
									<th width="50%" class="text-center">확진자 정보</th>
									<th width="10%" class="text-center">등록된 날짜</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="listArr" items="${listArr}" varStatus="st">
									<tr>
										<td>${listArr.idx}</td>
										<td>${listArr.latitude}</td>
										<td>${listArr.longitude}</td>
										<td>${listArr.info}</td>
										<td><fmt:formatDate value="${listArr.indate}" pattern="yyyy-MM-dd"/></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
          </div>
        </div>
      </div>
</div>


<c:import url="/foot" />