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
</head>
<body style="background: #f1f1f1;">
  <!-- 전체 div -->
  <div class="container"> 
    <!-- 배경 제외한 전체 div -->
    <div class="mt-5 pl-0 pr-0 bg-light shadow">
      <!-- 메뉴바 -->
      <nav class="navbar navbar-expand-lg navbar-light sticky-top" style="background: rgb(200, 152, 152); border-bottom: 1px solid">
        <div class="container">
          <label><a class="navbar-brand" href="index.html" style="text-decoration: none; color:black; font-family:'Gloria Hallelujah', cursive;  font-size: 30px; "><img src="<%=request.getContextPath() %>/images/dog.png" style="width:40px;"> PuppyHoney</a></label>
          <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                 	 정보
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                  <a class="dropdown-item" href="portfolio-1-col.html">뉴스</a>
                  <a class="dropdown-item" href="portfolio-2-col.html">정보게시판</a>
                  <a class="dropdown-item" href="portfolio-3-col.html">Q%A</a>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                	  커뮤니티
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                  <a class="dropdown-item" href="blog-home-1.html">자랑게시판</a>
                  <a class="dropdown-item" href="blog-home-2.html">모임게시판</a>
                  <a class="dropdown-item" href="blog-post.html">자유게시판</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/lostBoard">분실</a>
              </li> 
              </li>
              <li class="nav-item">
                <a class="nav-link" href="login.html">장소</a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="login.html">로그인</a>
              </li>
            </ul>
          </div>
        </div>
      <!-- 메뉴바 끝 -->
      </nav>
    
      