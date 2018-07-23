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
    <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
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
  
  </script>    
</head>
<body style="background:#f1f1f1">
	<div class="container mt-5 p-5">
		<div class="p-4"align="center"><label><a class="navbar-brand" href="<%=request.getContextPath() %>/index.jsp" style="text-decoration: none; color:black; font-family:'Gloria Hallelujah', cursive;  font-size: 30px; "><img src="<%=request.getContextPath() %>/images/dog.png" style="width:40px;"> PuppyHoney</a></label></div>
     		<div class="container col-sm-7 shadow h-100 p-4 rounded" style="background:white;">
		        <form action="" method="post">
		          <div class="form-group">
		            <label for="memberId">ID</label><label id="idResult" class="float-right"></label>
		            <input type="text" class="form-control" id="memberId" name="memberId" placeholder="ID를 입력하세요" required>
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
		              <button type="submit" class="btn mt-2 w-25" style="background: rgb(200, 152, 152);">가입하기</button>
		          </div>
		        </form>
    		</div>                     
  	</div> 
</body>
</html>