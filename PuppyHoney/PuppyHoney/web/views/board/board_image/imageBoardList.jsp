<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>

<div class="container">
	<div class="mt-4 form-group">
		<label><h3>사진게시판</h3></label>
        <div class="float-right pt-2 ml-4">
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
	
</div>

	
	
<div class="container mt-5 col-sm-11">
<!-- Page Heading -->
	<div class="pb-4">                                                                                           <!-- 선택이 되있으면 #555, text-decoration: underline; -->
        <a href="#"><font class="sortMenu">최신순</font></a>
        <font class="sortMenuBar" >|</font>
        <a  href="#"><font class="sortMenu">조회순</font></a>
        <font class="sortMenuBar" >|</font>
        <a  href="#"><font class="sortMenu">댓글순</font></a>
        <font class="sortMenuBar" >|</font>
        <a href="#"><font class="sortMenu">추천순</font></a>
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
	<div class="form-group mt-5" align="center">
		<button type="button" class="btn w-25">더보기</button>
	</div>
	
</div>
	
	<!-- /.row -->	
<%@ include file="/views/common/footer.jsp" %>