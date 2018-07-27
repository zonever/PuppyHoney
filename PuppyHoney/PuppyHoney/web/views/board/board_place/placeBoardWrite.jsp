<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>

<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>

<script>
	function fn_back()
	{
		location.href="views/board/board_place/placeBoardList.jsp";
	}
</script>
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
                        document.getElementById('address1').value = data.zonecode; //5자리 새우편번호 사용
                        document.getElementById('address2').value = fullAddr;

                        // 커서를 상세주소 필드로 이동한다.
                        document.getElementById('address3').focus();    
                      
                  }
              }).open();
          }
      </script>
      <div class="container">
        
      
          <h1 class="mt-4 mb-3 "style="margin-top: 2rem!important;"><a href="placeBoard.html">장소게시판</a>
          
          </h1>
  
          
          <form action="<%=request.getContextPath()%>/board/placeBoardFormEnd" method="post" enctype="multipart/form-data">
              <h5>제목</h5>
              <input type="text" class="form-control col-md-12" name ="businame" id="businame" placeholder="제목 입력" >
             <br>
              <div class="row"> 
                 
                  <div class="col-md-3"> 
                      <div class="form-group"> 
                            <label for="business"><h5>업종선택</h5></label> 
                            <select name='business' class="form-control" id="business">
                                <option id='business' value="카페">카페</option>
                                <option id='business' value="미용">미용</option>
                                <option id='business' value="병원">병원</option>
                            </select>
                      </div> 
                  </div> 
  
                  <div class="col-md-5"> 
                      <div class="form-group"> 
                          <label for="subject"><h5>업소명</h5></label> 
                          <input type="text" class="form-control col-md-12" name ="businame" id="businame" placeholder="업소명 입력" > <br>
                      </div>
                  </div> 

                  <div class="col-md-4">
                    <div class="form-group">
                      <label for='size'><h5>견종크기</h5></label> 
                      <select name='size'id="size" class="form-control">
                          <option id="size" value="소형견">소형견</option>
                          <option id="size" value="중형견">중형견</option>
                          <option id="size" value="대형견">대형견</option>
                      </select>
                    </div>
                </div> 
              </div> 
              <!— 구분1끝 업종, 업소명 —>

              <!— 구분2 —>
              <!— 영업시간 open ~ close —>
              <div class="form-group">
                 
                
                <label><h5>영업시간</h5></label>
                <div class="row p-3">
                   <input class='form-control col-md-2' type="time" name='open' value="10:00"> &nbsp; ~ &nbsp;<input class='form-control col-md-2' type="time" name='close' value="21:00">
                </div> 
                <br>
                
                <div class="col-md-3 p-0">
                    <label for='size'><h5>지역선택</h5></label> 
                     <div class="form-group">
                       <select name='location'id="location" class="form-control">
                           <option id="location" value="서울">서울</option>
                           <option id="location" value="경기">경기</option>
                           <option id="location" value="인천">인천</option>
                           <option id="location" value="부산">부산</option>
                           <option id="location" value="대구">대구</option>
                           <option id="location" value="대전">대전</option>
                           <option id="location" value="울산">울산</option>
                           <option id="location" value="강원">강원</option>
                           <option id="location" value="경남">경남</option>
                           <option id="location" value="경북">경북</option>
                           <option id="location" value="광주">광주</option>
                           <option id="location" value="전남">전남</option>
                           <option id="location" value="전북">전북</option>
                           <option id="location" value="충남">충남</option>
                           <option id="location" value="충북">충북</option>
                           <option id="location" value="제주">제주</option>
                           <option id="location" value="세종">세종</option>
                       </select>
                     </div>
                 </div> 
                <br>
              
              
                <label for="phone"><h5>연락처</h5></label> 
                <div class="col-md-15">
                      <div class="form-group row p-3">
                      <input type="text" class="form-control col-md-1" name ="phone" id="phone1" placeholder="지역번호"> -   
                      <input type="text" class="form-control col-md-1" name ="phone" id="phone2" placeholder="xxxx"> -
                      <input type="text" class="form-control col-md-1" name ="phone" id="phone3" placeholder="xxxx">
                    </div>
                </div> 
               
                 

                <!— 구분3 —>
                <label for="addres"><h5>주소</h5></label> 
                  <div class="row m-0">
                    <input type="text" class="form-control col-md-2" name ="address" id="address1" placeholder="우편번호">
                    <input type="button" onclick="test1()" value="우편번호 찾기" class="btn btn-danger">
                    
                  </div>
                 
                  <div class="row m-0">
                    <input type="text" class="form-control col-md-7" name ="address" id="address2" placeholder="주소">
                    <input type="text" class="form-control col-md-7" name ="address" id="address3" placeholder="상세주소">
                  </div>

                  <br>

                  
                    <label for="textarea"><h5>내용</h5></label>
                   
                    <textarea id="summernote" name='textarea' cols="140" rows="20" style='resize: none;'>내용입력</textarea>
                    <script>
                      $('#summernote').summernote({
                        placeholder: 'Hello bootstrap 4',
                        tabsize: 2,
                        height: 500
                      });
                    </script>
      
                


                </div>
              </div> 
              <div class="form-group" align='center'>
              <input class="btn btn-danger" type="submit" name="add" id="add" value="등록">
              <input class="btn btn-danger" type="reset" value="이전"/>
            </div>
          </form>
          
          
         
      <br>
<%@ include file="/views/common/footer.jsp" %>