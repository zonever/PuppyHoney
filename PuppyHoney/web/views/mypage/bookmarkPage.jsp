<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
	<script>
	$(function(){
	    $('#updatePage').on('click',function(){
	      location.href="<%=request.getContextPath()%>/updateMemberPage";
	    });
	    $('#message').on('click',function(){
	      window.open('views/mypage/message.jsp','message','top=50px, left=100px, height=600px, width=800px, resizable=no');
	    });
	    $('#bookmarkPage').on('click',function(){
          location.href="<%=request.getContextPath()%>/bookmarkPage";
        });
	    $('#deleteMember').on('click',function(){
	      location.href="<%=request.getContextPath()%>/deleteMemberPage";
	    });
	    $('#myHomepage').on('click',function(){
	      location.href="testpage.html";
	    }); 
	})
</script>
<style>
	#text td{
          height: 50px;;
      }
</style>

	
	<div class="container mt-5" style="text-align: center;">
        
            <h1 class="align-self-start">마이 페이지</h1>
            <br>
        
        <div class="btn-group m-2" style="display: inline-block;">
            <button id="updatePage" type="button" class="btn btn-outline-secondary">정보 수정</button>
            <button id="message" type="button" class="btn btn-outline-secondary">쪽지 함</button>
            <button id="bookmarkPage" type="button" class="btn btn-outline-secondary">즐겨찾기</button>
            <button id="deleteMember" type="button" class="btn btn-outline-secondary">회원 탈퇴</button>
            <button id="myHomepage" type="button" class="btn btn-outline-secondary">HOME</button>
         </div>
         
         <div class="p-1 pb-1">
	         <div class="container col-sm-7">
	             <h1 class="mt-3">즐겨 찾기</h1>
	             
	           	<div class="container p-4 rounded" style="text-align: left;" >
	               	<form action="" method="post">
            			<div class="container">           
							<table class="table">
								<thead>
									<tr>
										<th>check</th>
										<th>닉네임</th>
										<th>아이디</th>
									</tr>
								</thead>
									<tbody>
									<tr>
										<td><input type="checkbox" id="check" name="check"/></td>
										<td>John</td>
										<td>Doe</td>
									</tr>
									<tr>
										<td><input type="checkbox" id="check" name="check"/></td>
										<td>Mary</td>
										<td>Moe</td>
									</tr>
									<tr>
										<td><input type="checkbox" id="check" name="check"/></td>
										<td>July</td>
										<td>Dooley</td>
									</tr>
								</tbody>
							</table>
							<div class="btn-group" style="display: inline-block; float:right;">
								<button type="button" id="checkAll" class="btn btn-outline-secondary">전체 선택</button>
								<button type="button" id="uncheckAll" class="btn btn-outline-secondary">전체선택 해제</button>
								<button type="submit" id="deleteSubmit" name="deleteSubmit" class="btn btn-outline-secondary">선택사항 삭제</button>
							</div> 
						</div>
	                </form>
	            </div>
	        </div>
	       </div>
  </div>

<%@ include file="/views/common/footer.jsp" %>