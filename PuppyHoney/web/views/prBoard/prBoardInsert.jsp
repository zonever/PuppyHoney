<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>

<!-- 주소 api 스크립트 -->
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<!-- 게시판 글쓰기api -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script>
 <script>
          //주소api 스크립트
          function test1() {
              new daum.Postcode({
                  oncomplete: function(data) {
                      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                      
                      // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                      // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                      var fullAddr = ''; // 최종 주소 변수
                      var extraAddr = ''; // 조합형 주소 변수
      
                      // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                      if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                          fullAddr = data.roadAddress;
      
                      } else { // 사용자가 지번 주소를 선택했을 경우(J)
                          fullAddr = data.jibunAddress;
                      }
      
                      // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                      if(data.userSelectedType === 'R'){
                          //법정동명이 있을 경우 추가한다.
                          if(data.bname !== ''){
                              extraAddr += data.bname;
                          }
                          // 건물명이 있을 경우 추가한다.
                          if(data.buildingName !== ''){
                              extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                          }
                          // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                          fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                      }
                      
                      
                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                      document.getElementById("address1").value = data.zonecode; //5자리 새우편번호 사용
                      document.getElementById("address2").value = fullAddr;

                      // 커서를 상세주소 필드로 이동한다.
                      document.getElementById("address3").focus();      
                      
                  }
              }).open();
          }
      </script>

 <div class="container">
        
          <!-- Page Heading/Breadcrumbs -->
          <h1 class="mt-4 mb-3 "style="margin-top: 5rem!important;"><a href="/views/prBoard/prBoardList.jsp">장소게시판</a>
            <small>All dogs go to heaven</small>
          </h1>
    
          <!-- <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="index.html">Home</a>
            </li>
            <li class="breadcrumb-item active">PR 게시판</li>
          </ol> -->

          
          <form action="test.html" method="get">
              
              <div class="row"> 
                  <div class="col-md-6"> 
                      <div class="form-group"> 
                            <label for="business">업종 선택</label> 
                            <select name='business' class="form-control" id="business">
                                <option id='business' value="카페">카페</option>
                                <option id='business' value="미용">미용</option>
                                <option id='business' value="병원">병원</option>
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
                  <div class="col-md-2 row">
                            <label for='size'>견종 크기</label> 
                            <select name='size'id="size" class="form-control">
                                <option id="size" value="소형견">소형견</option>
                                <option id="size" value="중형견">중형견</option>
                                <option id="size" value="대형견">대형견</option>
                            </select>
                      </div> 
                <br>
                <label for="">영업시간 (Open ~ Close)</label>
                <div class="row p-3">
                   <input class='form-control col-md-2' type="time" name='open' value="10:00"> &nbsp; ~ &nbsp;<input class='form-control col-md-2' type="time" name='close' value="21:00">
                </div> 
                <br>
                
              
                <label for="phone">연락처</label> 
                <div class="col-md-15">
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
                    <input type="text" class="form-control col-md-2" name ="address" id="address1" placeholder="우편번호">
                    <input type="button" onclick="test1()" value="우편번호 찾기" class="btn btn-danger">
                    
                  </div>
                 
                  <div class="row m-0">
                    <input type="text" class="form-control col-md-7" name ="address" id="address2" placeholder="주소">
                    <input type="text" class="form-control col-md-7" name ="address" id="address3" placeholder="상세주소">
                  </div>

                  <br>

                  
                    <label for="textarea">내용</label>
                    <div id="summernote"></div>
                    <script>
                      $('#summernote').summernote({
                        placeholder: 'Hello bootstrap 4',
                        tabsize: 2,
                        height: 500
                      });
                    </script>
                    <!-- <textarea name='textarea' cols="140" rows="20" style='resize: none;'>내용입력</textarea> -->
                


                </div>
              </div> 
              <div class="form-group" align='center'>
              <input class="btn btn-danger" type="submit" name="add" id="add" value="등록">
              <input class="btn btn-danger" type="reset" value="이전"/>
            </div>
          </form>
          
          
         
      <br>

<%@ include file="/views/common/footer.jsp" %>