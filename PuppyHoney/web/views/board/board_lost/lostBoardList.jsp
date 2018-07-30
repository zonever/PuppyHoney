<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, com.ph.board.lost.model.vo.LostBoard"%>
     <%
    	List<LostBoard> list=(List)request.getAttribute("list");
    %>
    
<%@ include file="/views/common/header.jsp" %>

<script>
	$(function(){
		function fn_write(){
			location.href="<%=request.getContextPath()%>/write.do"
		}
		
		$('#readMore').on('click',function(){
			var read
			var userId=userLoggedIn.getUserId();
			var url="<%=request.getContextPath()%>/detailPage";
			
			
			/* selectDetail.userId.value=userId;
			selectDetail.action=url;
			selectDetail.method="post";
			selectDetail.submit(); */
		})
	});
	
	$(function(){
		$('.pp').slice(0, 8).show(); // select the first ten
		$('#load').click(function(e){ // click event for load more
			e.preventDefault();
				
			$('.pp:hidden').slice(0, 24).show(); // select next 10 hidden divs and show them
			if($('.pp:hidden').length == 0){ // check if any hidden divs still exist
			                  // alert("No more divs"); // alert if there are none left
			}
			
		});
	});
	
	function fn_readMore() {
		var readMore=$('#readMore');
		var userId=userLoggedIn.getUserId();
		var url="<%=request.getContextPath()%>/detailPage";
		
		readMore.attr("action",url);
		readMore.attr("value",userId);
		readMore.submit();
	}
    
</script>

	<div class="container mb-5 col-sm-11">
        <div class="mt-4 form-group">
            <label><h3>분실게시판</h3></label>
            <div class="float-right pt-2 ml-4">
            <button type="button" class="btn btn-dark" data-toggle="collapse" data-target="#demo" aria-expanded="false" aria-controls="collapseExample">
                      	필터
            </button>
                <button class="btn " onclick="fn_write()">글쓰기</button>
            </div>
            <div class="float-right pt-2">
                <form>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <select class="form-control" id="sel1">
                                <option>선택</option>
                                <option value="content">내용</option>
                                <option value="title">제목</option>
                                <option value="nickName">닉네임</option>
                            </select>
                        </div>
                        <div class="input-group-append">
                        	<input type="text" class="form-control" name="inputText" placeholder="검색어 입력">
                            <button class="btn " type="submit"><img src="<%=request.getContextPath() %>/images/search.png"/></button> 
                        </div>
                    </div>
                </form>
            </div>
            
        </div>      

        <div style="display: block;">
             
            <div id="demo" class="collapse mb-0">
                <div class="btn-group mb-0" data-toggle="buttons" style="display:block;">
                    <div class="m-2">
                        <form action="test.html" method="get">
                        	<span class="badge badge-secondary col-md-2"><h5>지역</h5></span>
                        	<br><br>
			                <label for='seoul' class="btn btn-dark">
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
			                <label for='daegu' class="btn btn-dark">
			                  <input type="checkbox" name="addr" id='daegu' value="대구"> 대구
			                </label>
			                <label for='daejeon' class="btn btn-dark">
			                  <input type="checkbox" name="addr" id='daejeon' value="대전"> 대전
			                </label>        
			                <label for='ulsan' class="btn btn-dark">
			                  <input type="checkbox" name="addr" id='ulsan' value="울산"> 울산
			                </label>
			                <label for='gangwon' class="btn btn-dark">
			                  <input type="checkbox" name="addr" id='gangwon' value="강원"> 강원
			                </label>
			                <label for='kyeongnam' class="btn btn-dark">
			                  <input type="checkbox" name="addr" id='kyeongnam' value="경남"> 경남
			                </label>
			                <label for='kyeongbuk' class="btn btn-dark">
			                  <input type="checkbox" name="addr" id='kyeongbuk' value="경북"> 경북
			                </label>
			                <label for='gwangju' class="btn btn-dark">
			                  <input type="checkbox" name="addr" id='gwangju' value="광주"> 광주
			                </label>
			                <label for='jeonnam' class="btn btn-dark">
			                  <input type="checkbox" name="addr" id='jeonnam' value="전남"> 전남
			                </label>
			                <label for='jeonbuk' class="btn btn-dark">
			                  <input type="checkbox" name="addr" id='jeonbuk' value="전북"> 전북
			                </label>
			                <label for='chungnam' class="btn btn-dark">
			                  <input type="checkbox" name="addr" id='chungnam' value="충남"> 충남
			                </label>
			                <label for='chungbuk' class="btn btn-dark">
			                  <input type="checkbox" name="addr" id='chungbuk' value="충북"> 충북
			                </label>
			                <label for='jeju' class="btn btn-dark">
			                  <input type="checkbox" name="addr" id='jeju' value="제주"> 제주
			                </label>
			                <label for='sejong' class="btn btn-dark">
			                  <input type="checkbox" name="addr" id='sejong' value="세종"> 세종
			                </label>
			                <input type="submit" value='검색' class="btn btn-dark col-md-2 " style="float:right;">
              			</form>
                    </div>               
                </div>
            </div>
        </div>
        
        <%if(list!=null){ 
        	for(LostBoard lb : list){%>
	
        <div class="card mb-4 pp">
            <div class="card-body pp">
            	<div class="row pp">
                	<div class="col-lg-6 pp">
		                <a href="#">
		                  	<img class="img-fluid rounded" src="http://placehold.it/750x300" alt="">
		                </a>
              		</div>
              		<div class="col-lg-6 pp">
                		<h2 class="card-title"><%=lb.getLostBoardTitle() %></h2>
                		<div class="mt-2 mb-2 mr-2 pp">
							<span><i></i><a href="#"><%=lb.getLostBoardId() %></a></span>
							<div class="float-right pp">
								<span><i></i><%=lb.getLostBoardDate() %></span>
								<!-- <span><i></i>6</span>
								<span><i></i>3</span>
								<span><i></i>10</span> -->
							</div>
						</div>
	                	<p class="card-text">분실................</p>
						<div class="align-self-bottom pp">
							<button id="readMore" class="btn btn-primary" onclick="fn_readMore()">더 읽기 &rarr;</button>
							<form name="selectDetail">
								<input type="hidden" name="userId"/>
							</form>
						</div>
              		</div>
           		 </div>
          	</div>
        </div>
        <%}
       	} %>
  
        <!-- <div class="card mb-4 pp">
            <div class="card-body pp">
                <div class="row pp">
                    <div class="col-lg-6 pp">
                        <a href="#">
                        	<img class="img-fluid rounded" src="http://placehold.it/750x300" alt="">
                        </a>
                    </div>
                    <div class="col-lg-6 pp">
                        <h2 class="card-title">분실</h2>
                        <div class="mt-2 mb-2 mr-2 pp">
						<span><i></i><a href="#">nickname</a></span>
							<div class="float-right pp">
								<span><i></i>2018-07-24</span>
								<span><i></i>6</span>
								<span><i></i>3</span>
								<span><i></i>10</span>
							</div>
						</div>
                        <p class="card-text pp">분실................</p>
                        <div class="align-self-bottom pp">
							<button id="readMore" class="btn btn-primary">더 읽기 &rarr;</button>
						</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card mb-4 pp">
            <div class="card-body pp">
                <div class="row pp">
                    <div class="col-lg-6 pp">
                        <a href="#">
                        <img class="img-fluid rounded" src="http://placehold.it/750x300" alt="">
                        </a>
                    </div>
                    <div class="col-lg-6 pp">
                        <h2 class="card-title">분실</h2>
                        <div class="mt-2 mb-2 mr-2 pp">
						<span><i></i><a href="#">nickname</a></span>
							<div class="float-right pp">
								<span><i></i>2018-07-24</span>
								<span><i></i>6</span>
								<span><i></i>3</span>
								<span><i></i>10</span>
							</div>
						</div>
                        <p class="card-text pp">분실................</p>
                        <div class="align-self-bottom pp">
							<button id="readMore" class="btn btn-primary">더 읽기 &rarr;</button>
						</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card mb-4 pp">
            <div class="card-body pp">
                <div class="row pp">
                    <div class="col-lg-6 pp">
                        <a href="#">
                        <img class="img-fluid rounded" src="http://placehold.it/750x300" alt="">
                        </a>
                    </div>
                    <div class="col-lg-6 pp">
                        <h2 class="card-title">분실</h2>
                        <div class="mt-2 mb-2 mr-2 pp">
						<span><i></i><a href="#">nickname</a></span>
							<div class="float-right pp">
								<span><i></i>2018-07-24</span>
								<span><i></i>6</span>
								<span><i></i>3</span>
								<span><i></i>10</span>
							</div>
						</div>
                        <p class="card-text pp">분실................</p>
                        <div class="align-self-bottom pp">
							<button id="readMore" class="btn btn-primary">더 읽기 &rarr;</button>
						</div>
                    </div>
                </div>
            </div>
        </div> -->
        
        <%-- <%if(list!=null){
			for(LostBoard lb : list){ %>
			<div class="card mb-4">
			  <div class="card-body">
			    <div class="row">
			      <div class="col-lg-6">
			        <a href="#">
			          <img class="img-fluid rounded" src="http://placehold.it/750x300" alt="">
			        </a>
			      </div>
			      <div class="col-lg-6">
			        <h2 class="card-title"><%=lb.getLostBoardTitle() %></h2>
			<p class="card-text"><%=lb.getLostBoardArea()%><br><%=lb.getLostBoardType()%><br><%=lb.getLostBoardPhone() %></p>
			      <button class="btn btn-primary">더 읽기 &rarr;</button>
			    </div>
			  </div>
			</div>
			<div class="card-footer text-muted">
			 <%=lb.getLostBoardDate() %>
			  </div>
			</div>
			
			<%} 
			}%> --%>
        
        <div class="form-group mt-5" align="center">
			<button id="load" type="button" class="btn w-50">더보기</button>
		</div>
    </div>
	
<%@ include file="/views/common/footer.jsp" %>