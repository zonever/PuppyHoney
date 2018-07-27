<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.ph.infoBoard.model.vo.InfoBoard"%>
<%@ include file="/views/common/header.jsp" %>
<%
	List<InfoBoard> list=(List<InfoBoard>)request.getAttribute("list");
	String pageBar = (String)request.getAttribute("pageBar");

%>

<script>
//검색창에 빈값 확인
function check() {

if(fr.inputText.value == "") {

  alert("검색어를 입력해 주세요.");

  fr.inputText.focus();

  return false;

}else{
 return true;
    }
}

$(function(){
    $('.btnCheck').click(function(){
    	var option = $('select#sel1 option:selected').val();
    	if(option=="no"){
        	alert("분류를 선택해 주세요");
        	return false;
    	}
    });
    
});
</script>
<style>
@media(max-width:450px){
        #info{
            display: none;
        }
    }
</style>
<div class="container">
	<div class="mt-4 form-group">
		<label><h3>정보게시판</h3></label>
        <div class="float-right pt-2 ml-4">
            <button class="btn " onclick="location.href='<%=request.getContextPath()%>/infoBoard/write'">글쓰기</button>
        </div>
        <div class="float-right pt-2">
             <form name="fr" action="#" onsubmit="return check()">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <select class="form-control" id="sel1" name="searchType">
                            <option value=no>선택</option>
                            <option value="content" >내용</option>
                            <option value="title" >제목</option>
                            <option value="nickName">닉네임</option>
                        </select>
                    </div>
                    <div class="input-group-append">
                    	<input type="text" class="form-control" name="inputText" placeholder="검색어 입력" value="">
                        <button class="btn btnCheck" type="submit"><img src="<%=request.getContextPath() %>/images/search.png"/></button> 
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
	<table class="table table-hover ">
		<tbody>
		<%for(InfoBoard ib : list){
			%>
		<tr>
			<td class="align-middle">
				<a href='<%=request.getContextPath()%>/infoBoard/boardView?no=<%=ib.getBoardNumber()%>'>
					<%=ib.getBoardTitle() %>
				</a>
			</td>
			<td class="align-middle" id="info">
				<img src="<%=request.getContextPath() %>/images/fa-comment.png" alt="댓글이미지" width="20px">1&nbsp;
				<img src="<%=request.getContextPath() %>/images/thumb-up.png" alt="따봉이미지" width="20px"><%=ib.getBoardgood()%>&nbsp;
				<img src="<%=request.getContextPath() %>/images/eye50.png" alt="조회이미지" width="20px"><%=ib.getBoardHit()%>
			</td>
			<td>
				<div class="block">
					<%=ib.getBoardId()%>
				</div>
				<div style="color: #ccc; font-size: 12px;">
					<%=ib.getBoardDate() %>
				</div>
			</td>
		</tr>
		<%} %>
		</tbody>
	</table>        
	<hr>
	<div class="container">

		<div class="form-group">
			<nav class="align-content-center">
				<ul class="pagination justify-content-center">
					<%=pageBar%>
				</ul>     
			</nav>
		</div>
	</div>
</div>
<%@ include file="/views/common/footer.jsp" %>