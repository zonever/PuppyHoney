<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<%@ page import="com.ph.board.place.model.vo.PlaceBoard, java.util.*, common.ImgExtract"%>

 <%
 	PlaceBoard plBoard=(PlaceBoard)request.getAttribute("plBoard");
 	
 %>
<style>

p img{
	max-width:690px;;
	max-height:510px;
}
   
.side-bar {
   position: fixed; 
   right: 390px;
   display: inline-block;
   width: 400px;
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

<script>
	$(function()
	{
		//답글버튼 반응
		$('.btn-reply').on('click',function()
		{
			var form=$("<form action='<%=request.getContextPath()%>'/board/boardCommentInsert' method='post'></form>");
			var html="<div class='row form-group pl-5'>";
			html+="<textarea rows='2' cols='70' name='replay' id='replay' style='resize: none;' ></textarea>"
			html+="&nbsp;&nbsp;<input type='submit' class='btn float-rigt btn-sm' value='등록'>";
			form.html(html);
			form.insertAfter($(this).parent().parent().parent()).slideDown(800);
			$(this).off('click');
		});
		
		$('.btnModi').on('click',function()
		{
			var num=<%=plBoard.getPlBoardNum()%>; 
			modifyFrm.placeBoardNum.value=num;
			var url="<%=request.getContextPath()%>/board/placeBoardModify";
			modifyFrm.action=url;
			modifyFrm.method="post";
			modifyFrm.submit();
		});
		
	});
			
</script>
	<%if(plBoard!=null){ %>
   <div class="container">
   	  <div class='row'>
      
      <br>
	  
     </div>
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
	              <li><span class="badge badge-light"><%=plBoard.getPlBoardDogSize()%></span></li>
	            </ul>
            </div> 
          
            <div>
              <h6 class="alert alert-danger">연락처</h6>
              <ul>
                <li><h6><%=plBoard.getPlBoardPhone()%></h6></li>
              </ul>
            </div>
              <div>
              <h6 class="alert alert-danger">영업시간 (Open - Close)</h6>
              <ul>
                <li>
               		<h6><%=plBoard.getPlBoardTime()%></h6>
                </li>

              </ul>
            </div>
           
            <h6  class="alert alert-danger">주소</h6>
            <div align='center'>
                <ul>
                  <li><h6><%=plBoard.getPlBoardAddr()%></h6></li>
                </ul>
                <div id="map" style="width:250px;height:180px;"></div>
              </div>
                   
            </div>
          </div>
        </div>
		</div>
        <!-- ./Sidebar -->
        
             
        
        <div class="col-lg-8">
          <img class="img-fluid rounded mx-auto d-block" src="<%=new ImgExtract().imgExtract(plBoard.getPlBoardContent())%>"  >
    		
    		<br><br>
           <table class="table text-center" >
           	  <tr>
           	  	<th class="table-active" colspan='3'><%=plBoard.getPlBoardTitle()%></th>
           	  </tr>
              <tr>
                <th class="table-Light table-danger"> <%=plBoard.getPlBoardId()%></th>
                <th class="table-Light table-danger"> <%=plBoard.getPlBoardDate()%></th>
                <th class="table-Light table-danger"> <%=plBoard.getPlBoardHits() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
              </tr>
		 	</table>
          <blockquote align='center'class="blockquote">
          <p><%=plBoard.getPlBoardContent()%></p>
          <br><br><br><br><br><br><br><br><br><br><br><br>
          <button class="btn btn-outline-warning">추천 <%=plBoard.getPlBoardGood()%></button><br><br>
          <%if(userLoggedIn!=null){ %>
			<%if(plBoard.getPlBoardId().equals(userLoggedIn.getUserNick())){ %>
          <button alige='center' style="padding: 2px 4px;"class='btn btn-danger btn-sm btnModi'>수정</button>&nbsp;<button alige='center'style="padding: 2px 4px;"class='btn btn-danger btn-sm btnDele'>삭제</button>
          </blockquote>
          

          <hr>
          
          <%} 
          }
          }%>
          
          
          <!-- 댓글 답글부분 -->
          <!-- Comments Form -->
          <div class="card my-4">
            <h5 class="card-header alert-danger">댓글</h5>
            <div class="card-body">
              <form action="">
                <div class="form-group">
                  <textarea class="form-control" rows="3"></textarea>		<!-- 댓글 적는 부분 -->
                </div>
                <button type="submit" class="btn btn-primary" style="float: right;">등록</button>
              </form>
            </div>
          </div>
		  <hr>
		  
		  
		  
		  
          <!-- 댓글 list Comment -->
          <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <!-- 답글부분(운영자,본인) 밸류값안에 코멘트 넘버를 가지고 있기 -->
            <div class="media-body">
              <h5 class="mt-0"><b>아이디1</b>&nbsp;<small style="font-size: 10px;">2018-07-21 01:00</small>&nbsp;<button style="float:right;  padding: 2px 4px;"class='btn btn-danger btn-sm'>삭제</button><button style="padding: 2px 4px;"class='btn btn-outline-warning btn-sm'>추천</button>&nbsp; </h5>
	              <div>
		              <span class="pl-2" style="font-size: 14px">
		              	댓글 내용1(레벨이 2일때만 보여주기)
		              </span>
						<button style="float:right;"class='badge badge-light btn btn-sm btn-reply'>답글</button>              
	              </div>
              
            </div>
          </div>
		  <hr>
		  
		  
          <!-- 댓글부분 -->
          <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <div class="media-body">
           	 <h5 class="mt-0"><b>아이디2</b>&nbsp;<small style="font-size: 10px;">2018-07-21 01:00</small>&nbsp;<button style="float:right;  padding: 2px 4px;"class='btn btn-danger btn-sm'>삭제</button><button style="padding: 2px 4px;"class='btn btn-outline-warning btn-sm'>추천</button>&nbsp; </h5>
              <div>
		            <span class="pl-2" style="font-size: 14px">
            		댓글 내용2(레벨이 2일때만 보여주기)
		            </span>
					<button style="float:right;"class='badge badge-light btn btn-sm btn-reply'>답글</button>              
              </div>
			<hr>
			<!-- 답글부분(운영자,본인) 밸류값안에 코멘트 넘버를 가지고 있기 -->
              <div class="media mt-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                  <h5 class="mt-0"><b>답아이디1</b>&nbsp;<small style="font-size: 10px;">2018-07-21 01:00</small>&nbsp;<button style="float:right;  padding: 2px 4px;"class='btn btn-danger btn-sm'>삭제</button><button style="padding: 2px 4px;"class='btn btn-outline-warning btn-sm'>추천</button>&nbsp; </h5>
                  <span class="pl-2" style="font-size: 14px">
            		답글 내용1(레벨이 2일때만 보여주기)
	              </span>
                </div>
              </div>
            </div>
          </div>		
          <hr>
          
          
           <!-- 댓글부분 -->
		  <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <!-- 답글부분(운영자,본인) 밸류값안에 코멘트 넘버를 가지고 있기 -->
            <div class="media-body">
              <h5 class="mt-0"><b>아이디3</b>&nbsp;<small style="font-size: 10px;">2018-07-21 01:00</small>&nbsp;<button style="float:right;  padding: 2px 4px;"class='btn btn-danger btn-sm'>삭제</button><button style="padding: 2px 4px;"class='btn btn-outline-warning btn-sm'>추천</button>&nbsp; </h5>
              <div>
	              <span class="pl-2" style="font-size: 14px">
	              	댓글 내용3(레벨이 2일때만 보여주기)
	              </span>
					<button style="float:right;"class='badge badge-light btn btn-sm btn-reply'>답글</button>              
              </div>
            </div>
          </div>
          <hr>
          <!-- 댓글 답글 끝 -->
          
        </div>			<!-- 본문내용 -->
      </div>			<!-- 전체컨테이너 -->
    
    <!-- 수정버튼 폼 -->
   <form name="modifyFrm">
    	<input type="hidden" name="placeBoardNum">
    	<input type="hidden" name="placeBoardTitle" value='<%=plBoard.getPlBoardTitle() %>'> 
    	<input type="hidden" name="placeBoardContent" value='<%=plBoard.getPlBoardContent() %>'>
    	<input type="hidden" name="placeBoardArea" value='<%=plBoard.getPlBoardArea() %>'>
    	<input type="hidden" name="placeBoardDogSize" value='<%=plBoard.getPlBoardDogSize() %>'>
    	<input type="hidden" name="placeBoardBusinessType" value='<%=plBoard.getPlBoardBusinessType() %>'>
    	<input type="hidden" name="placeBoardStoreName" value='<%=plBoard.getPlBoardStoreName() %>'>
    	<input type="hidden" name="placeBoardTime" value='<%=plBoard.getPlBoardTime() %>'>
    	<input type="hidden" name="placeBoardPhone" value='<%=plBoard.getPlBoardPhone() %>'>
    	<input type="hidden" name="placeBoardAddr" value='<%=plBoard.getPlBoardAddr() %>'>
    	
    </form> 
    
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

geocoder.addressSearch('<%=plBoard.getPlBoardAddr()%>', function(result, status) {		//주소값에 저장된 주소 넣기(name ="address" id="address2" placeholder="주소" 값으로)

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
         content: '<div style="width:150px;text-align:center;padding:6px 0;">"<%=plBoard.getPlBoardStoreName()%>"</div>'
     });
     infowindow.open(map, marker);

     // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
     map.setCenter(coords);
 } 
});    
</script>



<%@ include file="/views/common/footer.jsp" %>