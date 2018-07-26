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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>

 <body >
      <div class="container mt-5 p-5">
      <div class="p-4"align="center"><label><a id="logo" class="navbar-brand" href="<%=request.getContextPath() %>/index.jsp"><img src="<%=request.getContextPath() %>/images/dog.png" > PuppyHoney</a></label></div>
        <div class="container col-sm-5 shadow p-4 rounded" style="background:white;">
	         <form action="" method="post">
            <div class="form-group">
              <label for="userId">ID </label>
              <div class="form-group form-check-inline float-right">
                <label class="form-check-label ml-3">
                  <input class="form-check-input" type="checkbox">ID기억하기
                </label>
              </div>
              <input type="text" class="form-control" id="userId" name="userId" placeholder="ID를 입력하세요">
            </div>
            <div class="form-group">
              <label for="pwd">Password</label>
              <input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호를 입력하세요">
            </div>
	           <div class="form-group">
	             <button type="submit" class="btn w-25 "  align="center" style="background: rgb(200, 152, 152);" >로그인</button>
	             <div class="float-right">
		             <a href="<%=request.getContextPath() %>/views/member/register.jsp"  class="p-2">회원가입</a>
		             <a href="#"  class="p-2">비밀번호찾기</a>
	             </div>
	           </div>
	           
	         </form>
        </div>
   </div>
</body>
</html>
