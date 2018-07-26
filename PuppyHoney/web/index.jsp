<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="views/common/header.jsp" %>

<<<<<<< HEAD
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br>
=======

<!-- 뉴스 carousel 감싸는 div -->
<div class="container">
	<!-- 뉴스 carousel div -->
	<div id="main-news" class="carousel slide container pl-0 pr-0" data-ride="carousel">

		<!-- Indicators -->
		<ul class="carousel-indicators">
			<li data-target="#main-news" data-slide-to="0" class="active"></li>
			<li data-target="#main-news" data-slide-to="1"></li>
			<li data-target="#main-news" data-slide-to="2"></li>
		</ul>

		<!-- slideshow 내용 -->
		<div class="carousel-inner container pl-0 pr-0">
			<div class="carousel-item active">
				<a href="http://www.naver.com">
					<img src="<%=request.getContextPath() %>/images/twice.jpg" alt="Los Angeles">
					<div class="carousel-caption">
						<h3>제목입니다</h3>
					</div>
				</a>
			</div>
			<div class="carousel-item">
				<a href="http://www.naver.com">
					<img src="<%=request.getContextPath() %>/images/aa.jpg" alt="Los Angeles">
					<div class="carousel-caption">
						<h3>제목입니다</h3>
					</div>
				</a>
			</div>
			<div class="carousel-item">
				<a href="http://www.naver.com">
					<img src="<%=request.getContextPath() %>/images/tt.jpg" alt="Los Angeles">
					<div class="carousel-caption">
						<h3>제목입니다</h3>
					</div>
				</a>
			</div>
		</div>

		<!-- 이동버튼 -->
		<a class="carousel-control-prev" href="#main-news" data-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</a>
		<a class="carousel-control-next" href="#main-news" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
		
	<!-- 뉴스 carousel div 끝-->
	</div>
<!-- 뉴스 carousel 감싸는 div 끝-->
</div>

<!-- 인기게시물+최신게시물 탭  감싸는 div -->
<div class="container col-sm-11 pl-0 pr-0">
<!-- 인기게시물+최신게시물 탭 div -->
<div class="container row  mt-3 pl-0 pr-0">
	<!-- 인기게시물 div -->
	<div class="container col-lg-6 mt-5 mr-auto ">
		
		
		<br>
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<div class="h4 ml-4 mr-4">
				<h4 >인기 게시물</h4>
			</div>
			<li class="nav-item float-right" >
				<a class="nav-link active" data-toggle="tab" href="#hitsHot">조회순</a>
			</li>
			<li class="nav-item float-right">
				<a class="nav-link" data-toggle="tab" href="#replyHot">댓글순</a>
			</li>
		</ul>
		
		<!-- Tab 내용 -->
		<div class="tab-content">
			<div id="hitsHot" class="container tab-pane active"><br>
				<ul class="list-group">
				    <li class="list-group-item">
				    	<a href="#">조회순 입니다. 조회순 입니다. 조회순 입니다.조회순 입니다.조회순 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">조회순 입니다.조회순 입니다.조회순 입니다.조회순 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">조회순 입니다.조회순 입니다.조회순 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">조회순 입니다.조회순 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">조회순 입니다. [30]</a>
				    </li>
			  	</ul>
			</div>
			<div id="replyHot" class="container tab-pane fade"><br>
				<ul class="list-group">
				    <li class="list-group-item">
				    	<a href="#">댓글순 입니다. 댓글순 입니다. 댓글순 입니다. 댓글순 입니다. 댓글순 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">댓글순 입니다. 댓글순 입니다. 댓글순 입니다. 댓글순 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">댓글순 입니다. 댓글순 입니다. 댓글순 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">댓글순 입니다. 댓글순 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">댓글순 입니다. [30]</a>
				    </li>
			  	</ul>
			</div>
		</div>
		
		
	<!-- 인기게시물 div 끝-->	
	</div>
	
	<!-- 최신게시물 div -->
	<div class="container col-lg-6 mt-5 ">
	
		
		<br>
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<div class="h4 ml-4 mr-4">
				<h4 class="">최신 게시물</h4>
			</div>
			<li class="nav-item float-right ">
				<a class="nav-link active" data-toggle="tab" href="#infoNew">정보</a>
			</li>
			<li class="nav-item float-right">
				<a class="nav-link" data-toggle="tab" href="#freeNew">자유</a>
				
			</li>
		</ul>
		
		<!-- Tab 내용 -->
		<div class="tab-content">
			<div id="infoNew" class="container tab-pane active"><br>
				<ul class="list-group">
				    <li class="list-group-item">
				    	<a href="#">정보 입니다. 정보 입니다. 정보 입니다. 정보 입니다. 정보 입니다. 정보 입니다.[30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">정보 입니다. 정보 입니다. 정보 입니다. 정보 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">정보 입니다. 정보 입니다. 정보 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">정보 입니다. 정보 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">정보 입니다. [30]</a>
				    </li>
			  	</ul>
			</div>
			<div id="freeNew" class="container tab-pane fade"><br>
				<ul class="list-group">
				    <li class="list-group-item">
				    	<a href="#">자유 입니다. 자유 입니다. 자유 입니다. 자유 입니다. 자유 입니다. 자유 입니다.[30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">자유 입니다. 자유 입니다. 자유 입니다. 자유 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">자유 입니다. 자유 입니다. 자유 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">자유 입니다. 자유 입니다. [30]</a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#">자유 입니다. [30]</a>
				    </li>
			  	</ul>
			</div>
		</div>
		
	<!-- 최신게시물 div 끝-->	
	</div>
	
	
<!-- 인기게시물+최신게시물 탭 div 끝-->
</div>


<!-- 인기게시물+최신게시물 탭  감싸는 div 끝-->
</div>


<div class="container mt-5 col-sm-11">
<!-- Page Heading -->
	<div class="h4">
		<h4 >사진 게시판</h4>
	</div>
	<hr>
	<!-- Project One -->
	<div class="row">
		<div class="col-md-6 boardList_image">
			<a href="#">	
				<img class="rounded mb-3 mb-md-0" src="<%=request.getContextPath() %>/images/tt.jpg" alt="">
			</a>
		</div>
		<div class="col-md-6">
			<div class="boardList_image_title">
				<h2><a href="#">너무 귀엽죠~</a></h2>
			</div>
			<div class="mt-4 mr-2">
				<span align="right"><i></i><a href="#">nickname</a></span>
				<div class="float-right">
					<span><i></i>2018-07-24</span>
					<span><i></i>6</span>
					<span><i></i>3</span>
					<span><i></i>10</span>
				</div>
			</div>
			<div class="mt-4">
				<p>평소에 강아지가 좋아하는 집이나 자리가 있을 것이다. 그렇다면 그 공간에서 강아지가 정신적 안정감을 느낄 수 있도록 해주자. 긴장감과 우울감 등이 환경변화에서 오는만큼 자신에게 친숙한 곳에 있으면 이내 ‘괜찮다’는 것을 깨달을 수 있기 때문이다.</p>
			</div>
		</div>
	</div>
	<!-- /.row -->
	
	<hr>
	
	<div class="row">
		<div class="col-md-6 boardList_image">
			<a href="#">	
				<img class="rounded mb-3 mb-md-0" src="<%=request.getContextPath() %>/images/tt.jpg" alt="">
			</a>
		</div>
		<div class="col-md-6">
			<div class="boardList_image_title">
				<h2><a href="#">너무 귀엽죠~</a></h2>
			</div>
			<div class="mt-4 mr-2">
				<span align="right"><i></i><a href="#">nickname</a></span>
				<div class="float-right">
					<span><i></i>2018-07-24</span>
					<span><i></i>6</span>
					<span><i></i>3</span>
					<span><i></i>10</span>
				</div>
			</div>
			<div class="mt-4">
				<p>평소에 강아지가 좋아하는 집이나 자리가 있을 것이다. 그렇다면 그 공간에서 강아지가 정신적 안정감을 느낄 수 있도록 해주자. 긴장감과 우울감 등이 환경변화에서 오는만큼 자신에게 친숙한 곳에 있으면 이내 ‘괜찮다’는 것을 깨달을 수 있기 때문이다.</p>
			</div>
		</div>
	</div>
	<!-- /.row -->
	
	<hr>
	
	<div class="row">
		<div class="col-md-6 boardList_image">
			<a href="#">	
				<img class="rounded mb-3 mb-md-0" src="<%=request.getContextPath() %>/images/tt.jpg" alt="">
			</a>
		</div>
		<div class="col-md-6">
			<div class="boardList_image_title">
				<h2><a href="#">너무 귀엽죠~</a></h2>
			</div>
			<div class="mt-4 mr-2">
				<span align="right"><i></i><a href="#">nickname</a></span>
				<div class="float-right">
					<span><i></i>2018-07-24</span>
					<span><i></i>6</span>
					<span><i></i>3</span>
					<span><i></i>10</span>
				</div>
			</div>
			<div class="mt-4">
				<p>평소에 강아지가 좋아하는 집이나 자리가 있을 것이다. 그렇다면 그 공간에서 강아지가 정신적 안정감을 느낄 수 있도록 해주자. 긴장감과 우울감 등이 환경변화에서 오는만큼 자신에게 친숙한 곳에 있으면 이내 ‘괜찮다’는 것을 깨달을 수 있기 때문이다.</p>
			</div>
		</div>
	</div>
	<!-- /.row -->
	
	<hr>
	
	<div class="row">
		<div class="col-md-6 boardList_image">
			<a href="#">	
				<img class="rounded mb-3 mb-md-0" src="<%=request.getContextPath() %>/images/tt.jpg" alt="">
			</a>
		</div>
		<div class="col-md-6">
			<div class="boardList_image_title">
				<h2><a href="#">너무 귀엽죠~</a></h2>
			</div>
			<div class="mt-4 mr-2">
				<span align="right"><i></i><a href="#">nickname</a></span>
				<div class="float-right">
					<span><i></i>2018-07-24</span>
					<span><i></i>6</span>
					<span><i></i>3</span>
					<span><i></i>10</span>
				</div>
			</div>
			<div class="mt-4">
				<p>평소에 강아지가 좋아하는 집이나 자리가 있을 것이다. 그렇다면 그 공간에서 강아지가 정신적 안정감을 느낄 수 있도록 해주자. 긴장감과 우울감 등이 환경변화에서 오는만큼 자신에게 친숙한 곳에 있으면 이내 ‘괜찮다’는 것을 깨달을 수 있기 때문이다.</p>
			</div>
		</div>
	</div>
	<!-- /.row -->
	
	


</div>
>>>>>>> master

<%@ include file="views/common/footer.jsp" %>