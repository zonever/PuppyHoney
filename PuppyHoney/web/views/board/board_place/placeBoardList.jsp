<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<%@ page import="java.util.*,com.ph.board.place.model.vo.PlaceBoard, common.ImgExtract" %>

<%
	 List<PlaceBoard> pList =(List<PlaceBoard>)request.getAttribute("pList");
	
%>
<style>
    .pp{
        display: none;
    }
</style>
<script>
	
</script>
  <script>
         $(function(){
          $(".pp").slice(0, 18).show(); // select the first ten
          $("#load").click(function(e){ // click event for load more
              e.preventDefault();

              $(".pp:hidden").slice(0, 9).show(); // select next 10 hidden divs and show them
              if($(".pp:hidden").length == 0){ // check if any hidden divs still exist
                  alert("더 보여줄 게시물이 없습니다"); // alert if there are none left
          }
    });
});
         
         
    function fn_placeBoardWrite()
   	{
   		location.href="<%=request.getContextPath()%>/board/placeBoardForm";
   		
   	}
    </script>
      <!-- 바디부분 -->
      
    	  
      <div class="container">
         
          <div class="mt-4">
		<label><h3>장소게시판</h3></label>
		</div>
   	 
          
          <div class="form-group" align='right'>
              <button type="button" class="btn btn-dark m-1" data-toggle="collapse" data-target="#demo" aria-expanded="false" aria-controls="collapseExample">
                    필 터
                  </button>
                  <%if(session.getAttribute("userLoggedIn")!=null){ %>
              <button class="btn col-md-1" onclick="fn_placeBoardWrite()">글쓰기</button>
              <%} %>
            </div>
            
            
            <div class="col-lg-12 p-1">
                
            <div id="demo" class="collapse m-3">
              <form action="test.html" method="get">
                <span class="badge badge-secondary col-md-2"><h4>지역</h4></span>
                <br><br>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='seoul' value="서울"> 서울
                </label>
                <label for='kyeong' class="btn btn-dark">
                  <input type="checkbox" name="addr" id='kyeong' value="경기"> 경기
                </label>
                <label for='incheon' class="btn btn-dark">
                  <input type="checkbox"name="addr" id='incheon' value="인천"> 인천
                </label>
                <label for='busan' class="btn btn-dark">
                  <input type="checkbox" name="addr" id='busan' value="부산">부산 
                </label>
                <label for='daegu' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='daegu' value="대구"> 대구
                </label>
                <label for='daejeon' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='daejeon' value="대전"> 대전
                </label>        
                <label for='ulsan' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='ulsan' value="울산"> 울산
                </label>
                <label for='gangwon' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='gangwon' value="강원"> 강원
                </label>
                <label for='kyeongnam' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='kyeongnam' value="경남"> 경남
                </label>
                <br>
                <label for='kyeongbuk' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='kyeongbuk' value="경북"> 경북
                </label>
                <label for='gwangju' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='gwangju' value="광주"> 광주
                </label>
                <label for='jeonnam' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='jeonnam' value="전남"> 전남
                </label>
                <label for='jeonbuk' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='jeonbuk' value="전북"> 전북
                </label>
                <label for='chungnam' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='chungnam' value="충남"> 충남
                </label>
                <label for='chungbuk' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='chungbuk' value="충북"> 충북
                </label>
                <label for='jeju' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='jeju' value="제주"> 제주
                </label>
                <label for='sejong' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='sejong' value="세종"> 세종
                </label>

                <br><br>   
                <span class="badge badge-secondary col-md-2"><h4>업종</h4></span>
                <br><br>
                <label for='cafe' class="btn btn-dark">
                    <input type="checkbox" name="business" id='cafe' value="카페"> 카페
                </label>
                <label for='beauti' class="btn btn-dark">
                    <input type="checkbox" name="business" id='beauti' value="미용"> 미용
                </label>
                <label for='hosiptal' class="btn btn-dark">
                    <input type="checkbox" name="business" id='hosiptal' value="병원"> 병원
                  </label>  
                  <input type="submit" value='검색' class="btn col-md-2 "style="float:right;">

              </form>
            </div>
          </div>
            

          <br><br>
          
     
            
           
    
   

  			
	   <!-- Page Content 내용부분  -->
   	
  	
	   <div id='test1'class="row">
		   <%for(PlaceBoard pb: pList){
			   if(pb!=null&&pb.getPlBoardAcept_yn().equals("N")){
				  
			  %>
	      <div class="col-lg-4 col-sm-6 petCard pp">
	          <div class="card h-80 pp">
	            <a href="<%=request.getContextPath()%>/board/placeBoardView?plBoardNum=<%=pb.getPlBoardNum()%>"><img class="card-img-top" width="700" height="230" src="<%=new ImgExtract().imgExtract(pb.getPlBoardContent())%>" ></a>
	            <div class="card-body pp">
	              <h4 class="card-title">
	                <p class="text-center alert alert-secondary"><a href="<%=request.getContextPath()%>/board/placeBoardView?plBoardNum=<%=pb.getPlBoardNum()%>"><%=pb.getPlBoardTitle()%></a></p>
	              </h4>
	              <table class='text-center'>
	                  <tr>
	                    
	                   	   <th><b class='text-muted'><%=pb.getPlBoardStoreName()%></b></th>
	                  </tr>
	                  <hr>
	                  <tr>
	            		   <th><span class="badge badge-primary"><%=pb.getPlBoardBusinessType() %></span></th>
	                  </tr>
	  
	                  <tr>        
	                       <th><small class='alert-light'><%=pb.getPlBoardAddr() %></small></th>
	                  </tr>
	                </table>
	                <hr>
	            </div>
	          </div>
	        </div>
	        <%}
			  
	        } %>
       
						 </div>
                       </div>
                   	       
                    
                              <br>
    <div class="form-group mt-5" align="center">
		<button  id='load' type="button" class="btn w-50">더보기</button>
	</div>

<%@ include file="/views/common/footer.jsp" %>