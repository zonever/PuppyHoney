<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>

<!-- 지도 api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=29d28c77afa06b8d3797cd516b310f0f&libraries=services"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=29d28c77afa06b8d3797cd516b310f0f"></script>

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
              <div class="alert alert-danger">
              <h5>영업시간</h5>
              <ul>
                <li>
                    <h6>Open - 오전 9:30 </h6>
                </li>
                <li>
                    <h6>Close - 오전 9:30 </h6>
                </li>
              </ul>
            </div>
           
            <div class="alert alert-danger">
                <h4>주소</h4>
                <ul>
                  <li><h6 id='aa'>경기도 수원시 팔달구 권광로317번길 15</h6></li>
                </ul>
                <div id="map" style="width:200px;height:200px;"></div>
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
            <!--게시판읽기끝 코멘트갯수창-->
        <div class="container  pb-3">
      
            <div class="float-left" style="border-bottom: 1px black solid" >
              <img src="fa-comment.png"  alt="댓글사진" width="20px">
              <span class="custom-control-inline text-danger p-0" style="font-size: 20px">50 <font class="p-0" style="font-size: 20px;color: black"> comment</font></span>
            </div>
          </div>
          <!--코멘트갯수창끝-->
            <br><br>
            <!--댓글시작-->
           <div class="container pl-4">
              <div class="form-group">
                  <span><b>닉네임이야</b></span> 
                  <span style="font-size: 8px; color: rgb(153, 151, 147)" >2018-07-21 01:00</span>
                  <span class="btn" style="float: right; color: #e94a23;
                  padding: 1px 4px;
                  float: right;
                  height: 18px;
                  line-height: 14px; vertical-align: top;
                  border: 1px solid #9f9f9f;
                  font-size: 11px;
                  background-color: #fff;
                  
                  font-family: dotum,sans-serif;
                  cursor: pointer;">공감 0</span>
              </div>
              <div class="form-group">
                <span class="pl-2" style="font-size: 14px">그냥글씨인데 우짤래ㅔ?</span>
                <div class="pb-3"> 
                  <a class="btn btn-reply float-right" style="color: #a7a7a7;font-size: 12px">[답글]</a>
                </div>
              </div>
            </div>
            <hr/>
            <!--댓글1개끝-->
            <!--답글 형태-->
            <div class="container pl-5">
                <div class="form-group">
                    <img src="ic_reply.png" alt="답글표시"><span><b>오상현이야</b></span> 
                    <span style="font-size: 8px; color: rgb(153, 151, 147)" >2018-07-21 01:00</span>
                    <span class="btn" style="float: right; color: #e94a23;
                    padding: 1px 4px;
                    float: right;
                    height: 18px;
                    line-height: 14px; vertical-align: top;
                    border: 1px solid #9f9f9f;
                    font-size: 11px;
                    background-color: #fff;
                    
                    font-family: dotum,sans-serif;
                    cursor: pointer;">공감 0</span>
                </div>
                <div class="form-group">
                  <span class="pl-2" style="font-size: 14px">그냥글씨인데 우짤래ㅔ?</span>
                  
                </div>
              </div>
              <hr/>
              <!--답글형태끝-->
            
              <!--두번째댓글(복붙)-->
            <div class="container pl-4">
              <div class="form-group">
                  <span><b>닉네임이야</b></span> 
                  <span style="font-size: 8px; color: rgb(153, 151, 147)" >2018-07-21 01:00</span>
                  <span class="btn" style="float: right; color: #e94a23;
                  padding: 1px 4px;
                  float: right;
                  height: 18px;
                  line-height: 14px; vertical-align: top;
                  border: 1px solid #9f9f9f;
                  font-size: 11px;
                  background-color: #fff;
                  
                  font-family: dotum,sans-serif;
                  cursor: pointer;">공감 0</span>
              </div>
              <div class="form-group">
                <span class="pl-2" style="font-size: 14px">그냥글씨인데 우짤래ㅔ?</span>
                <div class="pb-3"> 
                  <a class="btn btn-reply float-right" style="color: #a7a7a7;font-size: 12px">[답글]</a>
                </div>
              </div>
            </div>
            <hr/>
              <!--두번째댓글끝-->
               <!--세번째댓글(복붙)-->
            <div class="container pl-4">
              <div class="form-group">
                  <span><b>닉네임이야</b></span> 
                  <span style="font-size: 8px; color: rgb(153, 151, 147)" >2018-07-21 01:00</span>
                  <span class="btn" style="float: right; color: #e94a23;
                  padding: 1px 4px;
                  float: right;
                  height: 18px;
                  line-height: 14px; vertical-align: top;
                  border: 1px solid #9f9f9f;
                  font-size: 11px;
                  background-color: #fff;
                  
                  font-family: dotum,sans-serif;
                  cursor: pointer;">공감 0</span>
              </div>
              <div class="form-group">
                <span class="pl-2" style="font-size: 14px">그냥글씨인데 우짤래ㅔ?</span>
                <div class="pb-3"> 
                  <a class="btn btn-reply float-right" style="color: #a7a7a7;font-size: 12px">[답글]</a>
                </div>
              </div>
            </div>
              <!--세번째댓글끝-->
  
  
          <!--댓글창 끝 댓글입력창-->
         
          <form action="#" method="POST" name="boardCommentFrm">
            <div class=" row form-group pt-4 pl-4 "> 
              
                <!-- //글 내용이 많으므로 <textarea>태그를 쓴다 rows는 textarea의 높이 조절  -->
                <textarea rows="4" cols="135" name="content" id="content" style="resize: none;" ></textarea>
                <!--나중에 히든으로몇개 넣어야함.-->
                
                <input type="submit" class="btn pull-right float-right" style="width: 80px;" value="등록">
            </div>
          </form>
         
          <hr/>
          <!--댓글입력창 끝-->
  
          <div class="container pt-3">
            <div class="form-group">
            <button class="btn">목록</button>
            <button class="btn float-right"><img src="pencil.png" alt="연필사진" width="20">글쓰기</button>
            </div>
          </div>
  
        </div>



<%@ include file="/views/common/footer.jsp" %>