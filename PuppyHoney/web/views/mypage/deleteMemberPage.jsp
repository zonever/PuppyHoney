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
	             <h1 class="mt-3">회원 탈퇴</h1>
	             <hr>
	             <div class="breadcrumb" style="text-align: left;">
	                 <table id="text">
	                     <tr>
	                         <td>* 본인 확인을 위해 비밀번호를 한 번 더 입력해 주세요.</td>
	                     </tr>
	                     <tr>
	                         <td>* 항상 비밀번호는 타인에게 노출되지 않도록 주의해 주세요.</td>
	                     </tr>
	                 </table>
	             </div>
	             <hr>
	            	<div class="container p-4 rounded" style="text-align: left;" >
	                	<form action="" method="post">
	                    	<div class="form-group">
	                        	<label for="memberId">ID</label><label id="idResult" class="float-right"></label>
	                        	<input type="text" class="form-control" id="memberId" name="memberId" value="아이디" readonly>
	                    	</div>
	                    	<div class="form-group">
	                        	<label for="password">Password</label>
	                        	<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요 (8글자이상의 영문숫자조합)" required>
	                     </div>
	                     <div class="form-group " align="center">
	                         <button type="submit" class="btn mt-2 w-25" style="background: rgb(200, 152, 152);">탈퇴하기</button>
	                         <button type="reset" class="btn mt-2 w-25">취소</button>
	                     </div>
	                 </form>
	             </div>
	         </div>
         </div>
    </div>
        		
	
<%@ include file="/views/common/footer.jsp" %>