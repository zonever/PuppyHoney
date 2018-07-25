<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
    <script>
  	$(function(){
  		$("#memberId").keyup(function()
  		{
  			if(true)
			{
  				$("#idResult").html("사용 가능한 ID").css("color","green");
			}
  			else
  			{
  				$("#idResult").html("이미 존재하는 ID").css("color","red");
  			}
  		});
  		$("#memberId").keyup(function()
  		{
  			if(true)
			{
  				$("#nickResult").html("사용 가능한 닉네임").css("color","green");
			}
  			else
  			{
  				$("#nickResult").html("이미 존재하는 닉네임").css("color","red");
  			}
  		});
	    $("#password2").keyup(function()
	    {   
	      if($("#password").val()!=$("#password2").val())
	      {
	          $("#pwdResult").html("비밀번호 불일치").css("color","red");
	      }
	      else
	      {
	          $("#pwdResult").html("비밀번호 일치").css("color","green");
	      }
	    });
  	});
  	
  	$(function(){
        $('#updatePage').on('click',function(){
          location.href="<%=request.getContextPath()%>"/updateMemberPage;
        })
        $('#message').on('click',function(){
          window.open('views/message.jsp','message','top=50px, left=100px, height=600px, width=800px, resizable=no');
        })
        $('#findPage').on('click',function(){
          location.href="sidebar.html";
        })
        $('#deleteMember').on('click',function(){
          location.href="write.html";
        })
        $('#myHomepage').on('click',function(){
          location.href="testpage.html";
        }) 
    })
  </script>
  <style>
      td{
          width: 600px; height: 300px;
      }
      table{
          border: 5px outset;
          border-collapse: separate;
      } 
      tr td{
          border: 3px outset;
      }
  </style>
  <div class="container mt-5" style="text-align: center;">
        
        <h1>마이 페이지</h1>
        <br>
        
        <div class="btn-group m-2" style="display: inline-block;">
            <button id="updatePage" type="button" class="btn btn-outline-secondary">정보 수정</button>
            <button id="message" type="button" class="btn btn-outline-secondary">쪽지 함</button>
            <button id="findPage" type="button" class="btn btn-outline-secondary">즐겨찾기</button>
            <button id="deleteMember" type="button" class="btn btn-outline-secondary">회원 탈퇴</button>
            <button id="myHomepage" type="button" class="btn btn-outline-secondary">HOME</button>
        </div>
        <div class="p-3 pb-3">
            <div class="container">
     		<div class="container col-sm-7 p-4 rounded" style="text-align: left;">
		        <form action="" method="post">
		          <div class="form-group">
		            <label for="memberId">ID</label><label id="idResult" class="float-right"></label>
		            <input type="text" class="form-control" id="memberId" name="memberId" value="아이디" readonly="readonly">
		          </div>
		          <div class="form-group">
		            <label for="password">Password</label>
		            <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요 (8글자이상의 영문숫자조합)" required>
		          </div>
		          <div class="form-group">
		            <label for="password2">Password</label><label id="pwdResult" class="float-right"></label>
		            <input type="password" class="form-control" id="password2" name="password2" placeholder="비밀번호를 한번더 입력하세요" required>
		          </div>
		          <div class="form-group">
		            <label for="memberNickName">NickName</label><label id="nickResult" class="float-right"></label>
		            <input type="text" class="form-control" id="memberNickName" name="memberNickName" placeholder="닉네임을 입력하세요" required>
		          </div>
		          <div class="form-group">
		            <label for="memberEmail" class="mb-0">E-Mail</label>
		            <input type="button" onclick="email_validate()" class="float-right btn btn-outline-secondary mb-2" value="인증메일발송">
		            <input type="email" class="form-control" id="memberEmail" name="memberEmail" placeholder="e-mail을 입력하세요" required>
		          </div>
		          <div class="form-group " align="center">
		              <button type="submit" class="btn mt-2 w-25" style="background: rgb(200, 152, 152);">변경하기</button>
		          </div>
		        </form>
    		</div>                     
  		  </div>
        </div>
    </div>    



<%@ include file="/views/common/footer.jsp" %>