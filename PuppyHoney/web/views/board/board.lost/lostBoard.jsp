<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
	<div class="container mb-5">
        <div class="mt-4 form-gruop">
            <label><h1>분실</h1></label>
            <div class="float-right pt-2 ml-4">
                <button class="btn btn-outline-secondary" onclick="fn_write()">글쓰기</button>
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
                        <input type="text" class="form-control" name="inputText" placeholder="검색어 입력">
                        <div class="input-group-append">
                            <button class="btn btn-success" type="submit"><img src="<%=request.getContextPath() %>/images/search.png"/></button> 
                        </div>
                    </div>
                </form>
            </div>
            
        </div>      

        <ol class="breadcrumb">
            <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo" aria-expanded="false" aria-controls="collapseExample">
                    지역을 선택하세요
            </button> 
            <div id="demo" class="collapse mb-0">
                <div class="btn-group mb-0" data-toggle="buttons" style="display: inline-block;">
                    <div class="m-2">
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 서울
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 경기
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 광주
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 대구
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 대전
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 부산
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 울산
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 인천
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 강원
                        </button>
                        
                    </div>
                    <div class="m-2">
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 경남
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 경북
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 전남
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 전북
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 충남
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 충북
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 제주
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 세종
                        </button>
                        <button type="button" class="btn btn-outline-dark m-1">
                            <input type="checkbox" autocomplete="off"> 전체선택
                        </button>
                    </div>
                    <button type="button" class="btn btn-outline-success" style="float: right;" onclick="fn_submit">확인</button>                
                </div>
            </div>
        </ol>
  
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-lg-6">
                <a href="#">
                  <img class="img-fluid rounded" src="http://placehold.it/750x300" alt="">
                </a>
              </div>
              <div class="col-lg-6">
                <h2 class="card-title">분실</h2>
                <p class="card-text">분실................</p>
                <a href="#" class="btn btn-primary">Read More &rarr;</a>
              </div>
            </div>
          </div>
          <div class="card-footer text-muted">
            년, 월, 일
          </div>
        </div>
  
        <div class="card mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-6">
                        <a href="#">
                        <img class="img-fluid rounded" src="http://placehold.it/750x300" alt="">
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <h2 class="card-title">분실</h2>
                        <p class="card-text">분실................</p>
                        <a href="#" class="btn btn-primary">Read More &rarr;</a>
                    </div>
                </div>
            </div>
            <div class="card-footer text-muted">
                년, 월, 일
            </div>
        </div>

        <div class="card mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-6">
                        <a href="#">
                        <img class="img-fluid rounded" src="http://placehold.it/750x300" alt="">
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <h2 class="card-title">분실</h2>
                        <p class="card-text">분실................</p>
                        <a href="#" class="btn btn-primary">Read More &rarr;</a>
                    </div>
                </div>
            </div>
            <div class="card-footer text-muted">
                년, 월, 일
            </div>
        </div>

        <div class="card mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-6">
                        <a href="#">
                        <img class="img-fluid rounded" src="http://placehold.it/750x300" alt="">
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <h2 class="card-title">분실</h2>
                        <p class="card-text">분실................</p>
                        <a href="#" class="btn btn-primary">Read More &rarr;</a>
                    </div>
                </div>
            </div>
            <div class="card-footer text-muted">
                년, 월, 일
            </div>
        </div>
        <div style="text-align: center;">
            <button type="button" class="btn btn-warning btn-lg" onclick="fn_addPage()">더보기</button>
        </div>
    </div>
	
<%@ include file="/views/common/footer.jsp" %>