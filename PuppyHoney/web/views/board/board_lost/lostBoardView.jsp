<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, com.ph.board.lost.model.vo.LostBoard"%>
    <%
		LostBoard lb=(LostBoard)request.getAttribute("lb");    	
    	
    %>
<%@ include file="/views/common/header.jsp" %>
<style>
 
   
.side-bar {
	position: fixed; 
	right: 220px;
	display: inline-block;
	width: 360px;
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

	<div class="container">

      
      <h1 class="mt-4 mb-3">분실 페이지</h1>


      <ol class="breadcrumb alert-danger">
        <li class="breadcrumb-item">
          <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">분실 페이지</li>
      </ol>

      <div class="row">
		<!-- Sidebar Widgets Column -->
        <div class="side-bar col-lg-3">
          <!-- Search Widget -->
          <div id="side" class="card mb-4 ">
            <h5 class="card-header alert-danger">상세 정보</h5>
            <div class="card-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>상세정보</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>분실지역</td>
                            <td><%=lb.getLostBoardArea() %></td>
                        </tr>
                        <tr>
                            <td>연락가능번호</td>
                            <td><%=lb.getLostBoardPhone() %></td>
                        </tr>
                        <tr>
                            <td>견종</td>
                            <td><%=lb.getLostBoardType() %></td>
                        </tr>
                    </tbody>
                </table>
            </div>
          </div>
        </div>
        <!-- ./Sidebar -->
        <div class="col-lg-8">
          <img class="img-fluid rounded" src="http://placehold.it/900x300" alt="">
          <hr>
         	 <p><%=lb.getLostBoardDate() %></p>
          <hr>

          <blockquote class="blockquote">
          	<p><%=lb.getLostBoardContent() %></p>
          <br><br><br><br><br><br><br><br><br><br><br><br>
          </blockquote>

          <hr>
          
          <!------------------구분선---------------------->
          <!-- 형 구분선 밑에를 제가 보내드린거에요 맨밑에 페이지 전체 틀 div가 2개더라구요 그 위까지만 복사해서 붙여넣기 하시면 됩니다. -->
          
          
          
          <!-- 댓글 답글부분 -->
          <!-- Comments Form -->
          <div class="card my-4">
            <h5 class="card-header alert-danger">댓글</h5>
            <div class="card-body">
              <form>
                <div class="form-group">
                  <textarea class="form-control" rows="3"></textarea>		<!-- 댓글 적는 부분 -->
                </div>
                <button type="submit" class="btn btn-primary" style="float: right;">등록</button>
              </form>
            </div>
          </div>
		  <hr>
		  
		  
		  
		  
          <!— 댓글 list Comment —>
          <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <!— 답글부분(운영자,본인) 밸류값안에 코멘트 넘버를 가지고 있기 —>
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
		  
		  
          <!— 댓글부분 —>
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
			<!— 답글부분(운영자,본인) 밸류값안에 코멘트 넘버를 가지고 있기 —>
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
          
          
           <!— 댓글부분 —>
		  <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <!— 답글부분(운영자,본인) 밸류값안에 코멘트 넘버를 가지고 있기 —>
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
        </div>
      </div>
    </div>

<%@ include file="/views/common/footer.jsp" %>