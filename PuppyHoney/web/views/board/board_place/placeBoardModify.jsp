<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<%@ page import="java.util.*,com.ph.board.place.model.vo.PlaceBoard, common.ImgExtract" %>
<%
	PlaceBoard pb=(PlaceBoard)request.getAttribute("plBoard");
	
	String []Addr=pb.getPlBoardAddr().split(",");
	String placeBoardAddr1=Addr[0];	//우편번호
	String placeBoardAddr2=Addr[1]; //기본주소(지도 확인값)
	String placeBoardAddr3=Addr[2];	//상세주소(동,호수 및 층)
	String []time=pb.getPlBoardTime().split(" - ");
	String placeBoardOpen=time[0];	//영업 오픈시간
	String placeBoardClose=time[1]; //영업 클로즈시간
	
	String []placeBoardPhone=pb.getPlBoardPhone().split("-");
	String placeBoardNum1=placeBoardPhone[0];	//전화번호1칸
	String placeBoardNum2=placeBoardPhone[1];	//전화번호2칸
	String placeBoardNum3=placeBoardPhone[2];	//전화번호3칸
	
%>

<!-- Smart Editor -->
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>


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
      <script>
      	
      </script>
      
      
     <div class="container col-sm-8 mt-5">

    <h1 class="mt-4 mb-3">글쓰기</h1>  

    <div class="ml-5 mr-5">
		<form name="placeform" action="<%=request.getContextPath()%>/board/placeBoardModifyEnd/pBoardNum=<%=pb.getPlBoardNum() %>" method="post">
        <div>
            <div class="form-group"> 
                <label for="title">제목</label> 
                <input type="text" class="form-control" name="title" id="title" placeholder="제목 입력" value='<%=pb.getPlBoardTitle()%>' required> 
            </div> 
        </div>  
        
         <div>
            <div class="form-group"> 
                <label for="storeName">업소명</label>
                <input type="text" class="form-control" name ="storeName" id="storeName" placeholder="상호입력" value='<%=pb.getPlBoardStoreName()%>' required> 
            </div>
        </div>  
        <div>
            <div class="form-group">
                    <label for="businessType">업종</label>
                    <select name="businessType" class="custom-select">
                    <%if(pb.getPlBoardBusinessType().equals("미용")){ %>
                        <option id="businessType" value="미용" selected>미용</option> 
                        <option id="businessType" value="카페" >카페</option>
                        <option id="businessType" value="병원" >병원</option>
                    <%}else if(pb.getPlBoardBusinessType().equals("카페")) {%>
                    	<option id="businessType" value="미용" >미용</option> 
                        <option id="businessType" value="카페" selected>카페</option>
                        <option id="businessType" value="병원" >병원</option>
                   	<%}else{ %>
                   		<option id="businessType" value="미용" >미용</option> 
                        <option id="businessType" value="카페" >카페</option>
                        <option id="businessType" value="병원" selected>병원</option>
                        <%} %>
                    </select>
            </div>
        </div>
        
        <div>
            <div class="form-group">
                    <label for="location">지역 입력</label>
                    <select name="location" class="custom-select">
                       	   <option id="location" value="서울" >서울</option>
                           <option id="location" value="경기" >경기</option>
                           <option id="location" value="인천" >인천</option>
                           <option id="location" value="부산" >부산</option>
                           <option id="location" value="대구" >대구</option>
                           <option id="location" value="대전" >대전</option>
                           <option id="location" value="울산" >울산</option>
                           <option id="location" value="강원" >강원</option>
                           <option id="location" value="경남" >경남</option>
                           <option id="location" value="경북" >경북</option>
                           <option id="location" value="광주" >광주</option>
                           <option id="location" value="전남" >전남</option>
                           <option id="location" value="전북" >전북</option>
                           <option id="location" value="충남" >충남</option>
                           <option id="location" value="충북" >충북</option>
                           <option id="location" value="제주" >제주</option>
                           <option id="location" value="세종" >세종</option>
                    </select>
            </div>
        </div>
        
        <div>
            <div class="form-group">
                    <label for="size">입장가능</label>
                    <select name="size" class="custom-select">
                  	  <%if(pb.getPlBoardDogSize().equals("소형견")){ %>
                       	  <option id="size" value="소형견" selected>소형견</option>
                          <option id="size" value="중형견" >중형견</option>
                          <option id="size" value="대형견" >대형견</option>
                      <%}else if(pb.getPlBoardDogSize().equals("중형견")) {%>
                      	  <option id="size" value="소형견" >소형견</option>
                          <option id="size" value="중형견" selected>중형견</option>
                          <option id="size" value="대형견" >대형견</option>
                      <%}else{%>
                      	  <option id="size" value="소형견" >소형견</option>
                          <option id="size" value="중형견" >중형견</option>
                          <option id="size" value="대형견" selected>대형견</option>
                        <%} %>
                    </select>
            </div>
        </div>
        
        <div>
           <label for="phone">연락처</label> 
            <div class="form-group row pl-3"> 
                <input type="text" class="form-control col-md-2" name ="phone1" id="phone1" placeholder="지역번호"  value='<%=placeBoardNum1%>' required> -   
                <input type="text" class="form-control col-md-3" name ="phone2" id="phone2" placeholder="xxxx" value='<%=placeBoardNum2%>' required> -
                <input type="text" class="form-control col-md-3" name ="phone3" id="phone3" placeholder="xxxx" value='<%=placeBoardNum3%>' required> 
            </div> 
        </div>  
        
        <div>
           <label for="phone">영업시간</label> 
            <div class="form-group row pl-3"> 
                <input class='form-control col-md-4' type="time" name='open' value='<%=placeBoardOpen%>'> &nbsp; ~ &nbsp;<input class='form-control col-md-4' type="time" name='close' value='<%=placeBoardClose%>'>
            </div> 
        </div>  
        
         <div>
            <div class="form-group"> 
                <label for="type">주소</label> 
	                <div class="row m-0">
	                    <input type="text" onclick="test1()" class="form-control col-md-4" name ="address1" id="address1" placeholder="우편번호" value='<%=placeBoardAddr1%>' required>
	                    <input type="button" onclick="test1()" value="우편번호 찾기" class="btn btn-danger">
                	</div>
	                 <input type="text" onclick="test1()" class="form-control col-md-12" name ="address2" id="address2" placeholder="주소" value='<%=placeBoardAddr2%>' required>
	                 <input type="text" class="form-control col-md-12" name ="address3" id="address3" placeholder="상세주소" value='<%=placeBoardAddr3%>' required>
            </div>
        </div>  
         
        <div>
            <div class="form-group"> 
                <label>상세 내용</label> 
                <textarea style="width: 100%" rows="25" name="content" id="textAreaContent" cols="80"  required><%=pb.getPlBoardContent() %></textarea>
            </div>
        </div>
        <div class="form-group" align='right'>
              <input class="btn btn-danger"	type="submit" value="등록" onclick="submitContents(this);"/>
              <input class="btn btn-danger" type="reset" value="이전"/>
            </div>
        
        </form>
    </div>
</div>    

<!-- Smart Editor -->
   <script type="text/javascript">
  
   var oEditors = [];
   nhn.husky.EZCreator.createInIFrame({
       oAppRef: oEditors,
       elPlaceHolder: "textAreaContent",
       sSkinURI: "<%=request.getContextPath()%>/se2/SmartEditor2Skin.html",
       fCreator: "createSEditor2"
   });
    
   //‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
   function submitContents(elClickedObj) {
       // 에디터의 내용이 textarea에 적용된다.
       oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", []);
     	var a=document.getElementById("textAreaContent").val();
        alert(a);
    
       // 에디터의 내용에 대한 값 검증은 이곳에서
     	
       try {
           elClickedObj.form.submit();
       } catch(e) {
        
       }
   }
    
   // textArea에 이미지 첨부
   function pasteHTML(filepath){
       var sHTML = '<img src="<%=request.getContextPath()%>/uploadFolder/'+filepath+'">';
       oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
   }
 	
  

  
</script>
		
<br>

<%@ include file="/views/common/footer.jsp" %>