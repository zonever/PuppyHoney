<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>


<div class="container">
        
          <!-- Page Heading/Breadcrumbs -->
          <h1 class="mt-4 mb-3"style="margin-top: 5rem!important;"><a href="placeBoard.html">장소게시판</a>
            <small>반려견과 함께 즐겨</small>
          </h1>
    
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="index.html">Home</a>
            </li>
            <li class="breadcrumb-item active">PR 게시판</li>
          </ol>

          
          <form action="#" method="get">
              
              <div class="row"> 
                  <div class="col-md-6"> 
                      <div class="form-group"> 
                            <label>업종 선택</label> 
                            <select class="form-control">
                                <option value="one">카페</option>
                                <option value="two">미용</option>
                                <option value="three">병원</option>
                            </select>
                      </div> 
                  </div> 
  
                  <div class="col-md-6"> 
                      <div class="form-group"> 
                          <label for="subject">업소명</label> 
                          <input type="text" class="form-control col-md-11" name ="subject" id="subject" placeholder="업소명 입력" > <br>
                      </div>
                  </div> 
              </div> 
              <!-- 구분1끝 업종, 업소명 -->

              <!-- 구분2 -->
              <!-- 영업시간 open ~ close -->
              <div class="form-group">
                <label for="">영업시간 (Open ~ Close)</label>
                <div class="row p-3">
                   <input type="time" name='open' value="10:00"> &nbsp; ~ &nbsp;<input type="time" name='close' value="21:00">
                </div> 
                <br>
                <div class="col-md-15">
                      <label for="phone">연락처</label> 
                      <div class="form-group row p-3">
                      <input type="text" class="form-control col-md-1" name ="phone" id="phone1" placeholder="xxx"> - 
                      <input type="text" class="form-control col-md-1" name ="phone" id="phone2" placeholder="xxxx"> -
                      <input type="text" class="form-control col-md-1" name ="phone" id="phone3" placeholder="xxxx">
                    </div>
                </div> 

                <!-- 구분2끝 -->

                <!-- 구분3 -->
                <label for="addres">주소 </label> 
                  <div class="row m-0">
                    <input type="text" class="form-control col-md-2" name ="address" id="addres1" placeholder="우편번호">
                    <button onclick='test1()' class="btn btn-danger">검색</button>
                  </div>
                 
                  <div class="row m-0">
                    <input type="text" class="form-control col-md-7" name ="address" id="addres2" placeholder="주소">
                    <input type="text" class="form-control col-md-7" name ="address" id="addres3" placeholder="나머지주소">
                  </div>

                  <br>

                  <div class="row m-0">
                    <label for="textarea">내용</label>
                    <textarea name='textarea' cols="140" rows="20" style='resize: none';></textarea>
                  </div>


                </div>
              </div> 
              <div class="form-group">
              <center><input class="btn btn-danger" align='center'type="submit" name="add" id="add" value="등록"></center>
              <center><input  class="btn btn-danger" type="reset" value="이전"/></center>
            </div>
          </form>
          
          
         
      <br>
<%@ include file="/views/common/footer.jsp" %>