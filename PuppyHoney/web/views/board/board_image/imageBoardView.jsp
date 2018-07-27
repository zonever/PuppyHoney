<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>

<link href="<%=request.getContextPath()%>/css/style2.css" rel="stylesheet">



<div class="container">
	<div class="row justify-content-center">
		<div class="col">
			<div class="entity_wrapper">
			    <div class="entity_title">
			        <h1><a href="#">제목 입니당~</a></h1>
			    </div>
			    <!-- entity_title -->
				
				
				
			    <div class="entity_meta mb-4">
			        작성일:&nbsp;<a href="#" target="_self">2018-07-27</a>&nbsp;
			        /&nbsp; 작성자:&nbsp;<a href="#" target="_self">김도경</a>&nbsp;
			        /&nbsp; 조회수:&nbsp;<a href="#" target="_self">424</a>
			    </div>
			    <!-- entity_meta -->
			
				<hr>
				
			    <div class="entity_img row justify-content-center">
			        <img class="img-fluid" style="width: 500px; height: 300px;" src="<%=request.getContextPath()%>/images/pug-690566_640.jpg" alt="feature-top">
			    </div>
			    <!-- entity_thumb -->
			
			    <div class="entity_content" style="margin: 0 100px;">
			        <p style="font-size: 1rem; color: black;">
			            내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~
			            내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~
			            내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~
			            내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~내용입니다~
			        </p>
			
			    </div>
			    <!-- entity_content -->
			
			    <div class="d-flex justify-content-center mb-3">
			
			        <button class="btn" style="margin:20px 0 50px 0;">추천 30</button>
			
			    </div>
			
			
			    <div class="entity_footer">
			        <div class="entity_tag">
			            <span class="blank"><a href="#">뉴스</a></span>
			            <span class="blank"><a href="#">분실</a></span>
			            <span class="blank"><a href="#">자유</a></span>
			            <span class="blank"><a href="#">정보</a></span>
			        </div>
			        <!-- entity_tag -->
			
			        <div class="entity_social">
			            <!-- <span><i class="fa fa-share-alt"></i>424 <a href="#">조회수</a> </span> -->
			            <span><i class="fa fa-comments-o"></i>4 <a href="#">댓글수</a> </span>
			        </div>
			        <!-- entity_social -->
			
			    </div>
			    <!-- entity_footer -->
			
			</div>
			<!-- entity_wrapper -->
			
			
			<div class="readers_comment">
			    <div class="entity_inner__title header_purple">
			        <h2>댓글</h2>
			    </div>
			    <!-- entity_title -->
			
			
			    <div class="media">
			        <div class="media-left mr-2">
			            <a href="#">
			                <img alt="64x64" class="media-object" data-src="assets/img/reader_img1.jpg"
			                     src="<%=request.getContextPath() %>/images/reader_img1.jpg" data-holder-rendered="true">
			            </a>
			        </div>
			
			        <div class="media-body">
			            <h2 class="media-heading"><a href="#">이중섭</a></h2>
			            잘 읽고 갑니다~
			
			            <div class="entity_vote">
			                <a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a>
			                <a href="#"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a>
			                <a href="#"><span class="reply_ic">답글달기</span></a>
			            </div>
			
			            <div class="media">
			                <div class="media-left mr-2">
			                    <a href="#">
			                        <img alt="64x64" class="media-object" data-src="assets/img/reader_img2.jpg"
			                             src="<%=request.getContextPath() %>/images/reader_img2.jpg" data-holder-rendered="true">
			                    </a>
			                </div>
			                <div class="media-body">
			                    <h2 class="media-heading"><a href="#">이지환</a></h2>
			                    어서와요~
			                    <div class="entity_vote">
			                        <a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a>
			                        <a href="#"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a>
			                        <a href="#"><span class="reply_ic">답글달기</span></a>
			                    </div>
			                </div>
			            </div>
			        </div>
			
			    </div>
			    <!-- media end -->
			
			    <div class="media">
			        <div class="media-left mr-2">
			            <a href="#">
			                <img alt="64x64" class="media-object" data-src="assets/img/reader_img3.jpg"
			                     src="<%=request.getContextPath() %>/images/reader_img3.jpg" data-holder-rendered="true">
			            </a>
			        </div>
			        <div class="media-body">
			            <h2 class="media-heading"><a href="#">김도경</a></h2>
			            안녕하세요 반갑습니다~
			
			            <div class="entity_vote">
			                <a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a>
			                <a href="#"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a>
			                <a href="#"><span class="reply_ic">답글달기</span></a>
			            </div>
			        </div>
			    </div>
			    <!-- media end -->
			</div>
			<!--Readers Comment-->
			
			
			<div class="entity_comments">
			    <div class="entity_inner__title header_black">
			        <h2>댓글 작성</h2>
			    </div>
			    <!--Entity Title -->
			
			    <div class="entity_comment_from">
			        <form>
			            <!-- <div class="form-group">
			                <input type="text" class="form-control" id="inputName" placeholder="Name">
			            </div>
			            <div class="form-group">
			                <input type="text" class="form-control" id="inputEmail" placeholder="Email">
			            </div> -->
			            <div class="form-group comment">
			                <textarea class="form-control" id="inputComment" placeholder="내용" style="height: 150px;"></textarea>
			            </div>
			
			            <button type="submit" class="btn btn-submit red">등록</button>
			
			            <div class="container my-5">
			                <div class="form-group">
			                    <button class="btn">목록</button>
			                    <button class="btn float-right">글쓰기</button>
			                </div>
			            </div>
			        </form>
			    </div>
			    <!--Entity Comments From -->
			
			</div>
			<!--Entity Comments -->
		
		</div>
		<!--Left Section-->
		
	</div>
	<!-- row -->

</div>
<!-- container -->



<%@ include file="/views/common/footer.jsp" %>