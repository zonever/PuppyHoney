<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<style>
 
   
.side-bar {
   position: fixed; 
   right: 400px;
   display: inline-block;
   width: 370px;
}
   
 /* 모바일로 바꿨을 때 */   
@media (max-width:450px) {
   .side-bar {
      position: relative;
      right: 0;
      width: 100%;
   }
}

   
</style>
<!-- 지도 api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=29d28c77afa06b8d3797cd516b310f0f&libraries=services"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=29d28c77afa06b8d3797cd516b310f0f"></script>


   <div class="container">

      
      <h1 class="mt-4 mb-3">분실 페이지</h1>


     
     <div class="row">
      <!-- Sidebar Widgets Column -->
      
      
        <div class="side-bar col-lg-3">
          <!-- Search Widget -->
          <div id="side" class="card mb-4">
            <h6 class="card-header alert-danger">상세 정보</h6>
            <div class="card-body">
            <div>
	            <h6 class="alert alert-danger">입장가능</h6>
	            <ul>
	              <li><span class="badge badge-info">소형</span>&nbsp;&nbsp;&nbsp;<span class="badge badge-info">중형</span></li>
	            </ul>
            </div> 
            <div>
              <h6 class="alert alert-danger">연락처</h6>
<div class="container p-5" style="background:white;">
     
            <blockquote class="blockquote text-center">
                <h2>글제목(title)</h2>
            </blockquote>
            <table class="table text-center" >
              <tr>
                <th class="table-active">작성자</th>
                <th class="table-active">날짜</th>
                <th class="table-active">조회수</th>
              </tr>
              <tr>
               
              </tr>
            </table>
            <div align='center'>
              <p>내용입력 ~~</p>
              <p>내용입력 ~~</p>
              <p>내용입력 ~~</p>
              <p>내용입력 ~~</p>
              <p>내용입력 ~~</p>
              <p>내용입력 ~~</p>
              <br>
              <button class="btn btn-outline-warning">추천 20</button>
            </div>
            <hr>
            <div class="alert alert-danger">
                <table>
                    <tr>
                        <th>입장 :</th>
                        <th><span class="badge badge-warning">소형</span></th>
                        <th><span class="badge badge-warning">중형</span></th>
                        <th><span class="badge badge-warning">대형</span></th>
                      </tr>
                  <tr>
                    <th>종류 :</th>
                    <th><span class="badge badge-warning">병원</span></th>
                  </tr>
                </table>
                </div>
            <div class="alert alert-danger">
              <h5>연락처</h5>
              <ul>
                <li><h6>대표번호 : 02-3033-2032</h6></li>
              </ul>
            </div>
              <div>
              <h6 class="alert alert-danger">영업시간 (Open - Close)</h6>
              <ul>
                <li>
               		<span class="badge badge-info">오전 9:30</span>&nbsp; - &nbsp;
                    <span class="badge badge-info">오후 10:00</span>
                </li>

              </ul>
            </div>
           
            <div>
                <h6  class="alert alert-danger">주소</h6>
                <ul>
                  <li><h6>경기도 수원시 팔달구 권광로317번길 15</h6></li>
                </ul>

                <div id="map" style="width:290px;height:200px;"></div>
              </div>
                   
            </div>
          </div>
        </div>

        <!-- ./Sidebar -->
        
             
        
        <div class="col-lg-8">
          <img class="img-fluid rounded" src="http://placehold.it/900x300" alt="">
         <hr>
           <table class="table  text-center" >
              <tr>
                <th class="table-active">작성자</th>
                <th class="table-active">날짜</th>
                <th class="table-active">조회수</th>
              </tr>
		 	</table>
		 <hr>
          <blockquote align='center'class="blockquote">
          <p>내용 페이지</p>
          <br><br><br><br><br><br><br><br><br><br><br><br>
          <button class="btn btn-outline-warning">추천 20</button>
          </blockquote>

          <hr>
          
          <!-- Comments Form -->
          <div class="card my-4">
            <h5 class="card-header alert-danger">댓글</h5>
            <div class="card-body">
              <form>
                <div class="form-group">
                  <textarea class="form-control" rows="3"></textarea>
                </div>
                <button type="submit" class="btn btn-primary" style="float: right;">등록</button>
              </form>
            </div>
          </div>

          <!-- Single Comment -->
          <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <div class="media-body">
              <h5 class="mt-0">댓글</h5>
              댓글 내용
            </div>
          </div>

          <!-- Comment with nested comments -->
          <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <div class="media-body">
              <h5 class="mt-0">댓글</h5>
              댓글 내용

              <div class="media mt-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                  <h5 class="mt-0">답글</h5>
                  답글 내용
                </div>

                <div id="map" style="width:200px;height:200px;"></div>

              </div>

              <div class="media mt-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                  <h5 class="mt-0">답글</h5>
                  답글 내용
                </div>
              </div>
              <div class="media mt-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                  <h5 class="mt-0">답글</h5>
                  답글 내용
                </div>
              </div>
              <div class="media mt-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                  <h5 class="mt-0">답글</h5>
                  답글 내용
                </div>
              </div>
              <div class="media mt-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                  <h5 class="mt-0">답글</h5>
                  답글 내용
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<script>
 var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
 mapOption = {
     center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
     level: 3 // 지도의 확대 레벨
 };  

//지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new daum.maps.services.Geocoder();

//주소로 좌표를 검색합니다

geocoder.addressSearch('경기도 수원시 팔달구 권광로317번길 15', function(result, status) {		//주소값에 저장된 주소 넣기(name ="address" id="address2" placeholder="주소" 값으로)

 // 정상적으로 검색이 완료됐으면 
  if (status === daum.maps.services.Status.OK) {

     var coords = new daum.maps.LatLng(result[0].y, result[0].x);

     console.log("1.다음지도====="+result[0].y); /// 위도
     console.log("2.다음지도====="+result[0].x); /// 경도



     // 결과값으로 받은 위치를 마커로 표시합니다
     var marker = new daum.maps.Marker({
         map: map,
         position: coords
     });

     // 인포윈도우로 장소에 대한 설명을 표시합니다
     var infowindow = new daum.maps.InfoWindow({
         content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
     });
     infowindow.open(map, marker);

     // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
     map.setCenter(coords);
 } 
});    
</script>


<%@ include file="/views/common/footer.jsp" %>