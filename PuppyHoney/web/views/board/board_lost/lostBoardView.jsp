<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                            <td>정보</td>
                            <td>내용</td>
                        </tr>
                        <tr>
                            <td>정보</td>
                            <td>내용</td>
                        </tr>
                        <tr>
                            <td>정보</td>
                            <td>내용</td>
                        </tr>
                        <tr>
                            <td>정보</td>
                            <td>내용</td>
                        </tr>
                        <tr>
                            <td>정보</td>
                            <td>내용</td>
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
          <p>날짜</p>
          <hr>

          <blockquote class="blockquote">
          <p>내용 페이지</p>
          <br><br><br><br><br><br><br><br><br><br><br><br>
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

<%@ include file="/views/common/footer.jsp" %>