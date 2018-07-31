<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.ph.board.news.model.vo.NewsBoard,common.*" %>
<%@ include file="/views/common/header.jsp" %>
<%
	List<NewsBoard> newsList=(List<NewsBoard>)request.getAttribute("newsList");
	ImgExtract ie=new ImgExtract();
%>

<script>
         $(function(){
          $(".pp").slice(0, 18).show(); // select the first ten
          $("#load").click(function(e){ // click event for load more
              e.preventDefault();

              $(".pp:hidden").slice(0, 9).show(); // select next 10 hidden divs and show them
              if($(".pp:hidden").length == 0){ // check if any hidden divs still exist
                  // alert("No more divs"); // alert if there are none left
          }
    });
});
</script>

<div class="container mb-5">
	<div class="mt-4">
	<label><h3>News</h3></label>
	</div>
	<%if(userLoggedIn!=null)
	{ 
		if(userLoggedIn.getUserId().equals("admin"))
		{ %>
		<div class="float-right pt-2 ml-4">
	  		<button class="btn " onclick="location.href='<%=request.getContextPath()%>/board/newsBoardWrite'">글쓰기</button>
	    </div>
    	<%} 
    }%>

</div> 

	
	
<div class="container mt-5 col-sm-11">

	
	<hr>
	
	
	<%if(!newsList.isEmpty()){
		for(int i=0;i<newsList.size();i++)
		{ %>
		<div class="row ">
			<div class="col-md-6 boardList_image">
				<a href="<%=request.getContextPath()%>/board/newsBoardView?num="<%=newsList.get(i).getNewsBoardNum() %>>	
					<img class="rounded mb-3 mb-md-0" src="<%=ie.imgExtract(newsList.get(i).getNewsBoardContent())%>" >
				</a>
			</div>
			<div class="col-md-6 mt-5" align="center">
				<div class="boardList_image_title" >
					<h1><a href="<%=request.getContextPath()%>/board/newsBoardView?num="<%=newsList.get(i).getNewsBoardNum() %>><%=newsList.get(i).getNewsBoardTitle() %></a></h1>
				</div>
				<div class="mt-4 mr-2 ">
					<div class="float-right">
						<img src="<%=request.getContextPath() %>/images/fa-comment.png" alt="댓글이미지" width="20px"><%=newsList.get(i).getNewsBoardReplynum() %>&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="<%=request.getContextPath() %>/images/thumb-up.png" alt="따봉이미지" width="20px"><%=newsList.get(i).getNewsBoardGood()%>&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="<%=request.getContextPath() %>/images/eye50.png" alt="조회이미지" width="20px"><%=newsList.get(i).getNewsBoardHits()%>
					</div>
				</div>
			
			</div>
		</div>
		
		
		<hr>
		<%}
	}%>
	
	<div class="form-group mt-5" align="center">
		<button  id='load' type="button" class="btn w-50">더보기</button>
	</div>
	
</div>

<%@ include file="/views/common/footer.jsp" %>