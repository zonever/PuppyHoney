<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PuppyHoney</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <script>
  	$(function(){
  		$("#memberId").keyup(function()
  		{
  			if($("#memberId").val().trim()=='admin')
			{
  				$("#idResult").html("사용하지 못하는 ID").css("color","red");
			}
  			else
  			{
  				if(true)
  				{
  	  				$("#idResult").html("사용 가능한 ID").css("color","green");
  				}
  	  			else
  	  			{
  	  				$("#idResult").html("이미 존재하는 ID").css("color","red");
  	  			}
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
  
  </script>    
</head>
<body >
	<div class="container mt-5 p-5">
		<div class="p-4"align="center"><label><a id="logo" class="navbar-brand" href="<%=request.getContextPath() %>/index.jsp" ><img src="<%=request.getContextPath() %>/images/dog.png"> PuppyHoney</a></label></div>
     		<div id="contentarea" class="container col-sm-7 shadow h-100 p-4 rounded" >
		        <form action="" method="post">
		          <div class="form-group">
		            <label for="userId">ID</label><label id="idResult" class="float-right"></label>
		            <input type="text" class="form-control" id="userId" name="userId"  required>
		          </div>
		          <div class="form-group">
		            <label for="userPw">비밀번호</label>
		            <input type="password" class="form-control" id="userPw" name="userPw" placeholder="8글자이상의 영문숫자조합" required>
		          </div>
		          <div class="form-group">
		            <label for="userPw2">비밀번호확인</label><label id="pwdResult" class="float-right"></label>
		            <input type="password" class="form-control" id="userPw2" name="userPw2" placeholder="비밀번호를 한번더 입력하세요" required>
		          </div>
		          <div class="form-group">
		            <label for="userNick">닉네임</label><label id="nickResult" class="float-right"></label>
		            <input type="text" class="form-control" id="userNick" name="userNick"  required>
		          </div>
		          <div class="form-group">
		            <label for="userEmail" class="mb-0">E-Mail</label>
		            <input type="button" onclick="email_validate()" class="float-right btn btn-outline-secondary mb-2" value="인증메일발송">
		            <input type="email" class="form-control" id="userEmail" name="userEmail"  required>
		          </div>
		          <div class="form-group">
		            <label for="userName">이름</label>
		            <input type="text" class="form-control" id="userName" name="userName" required>
		          </div>
		          <div class="form-group">
		            <label for="userBirth">생년월일</label>
		       		<input type="date" class="form-control" id="userBirth" name="userBirth" required>
		          </div>
		          <div class="form-group">
		            <label for="userDogName">반려견 이름</label>
		            <input type="text" class="form-control" id="userDogName" name="userDogName">
		          </div>
		          <div class="form-group">
		            <label for="userDogBirth">반려견 생년월일</label>
		       		<input type="date" class="form-control" id="userDogBirth" name="userDogBirth">
		          </div>
		          <label> 프로필 사진</label>
		          <div class="custom-file">
    				<input type="file" class="custom-file-input" id="imagefile">
    				<label class="custom-file-label" for="imagefile">사진을 선택해주세요</label>
  				  </div>
		          <div class="form-group mt-3" align="center">
		              <button type="submit" class="btn mt-2 w-25" >가입하기</button>
		          </div>
		        </form>
    		</div>                     
  	</div> 
</body>
</html>