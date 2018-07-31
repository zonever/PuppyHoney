<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<script type="text/javascript" src="<%=request.getContextPath()%>/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>


<div class="container col-sm-8 mt-5">

    <h1 class="mt-4 mb-3">글쓰기</h1>  

    <div class="ml-5 mr-5">
    	<form action='<%=request.getContextPath()%>/board/lostBoardWriteEnd?userId=<%=userLoggedIn.getUserId()%>' method="post" id="fr">
	        <div>
	            <div class="form-group"> 
	                <label for="title">제목</label> 
	                <input type="text" class="form-control" name="title" id="title" placeholder="제목 입력"> 
	            </div> 
	        </div>  
	        <div>
	            <div class="form-group">
	        
	                    <label for="address">지역 입력</label>
	                    <select name="address" class="custom-select">
	                        <option selected>지역 선택</option>
	                        <option value="강원">강원</option>
	                        <option value="경기">경기</option>
	                        <option value="경남">경남</option>
	                        <option value="경북">경북</option>
	                        <option value="광주">광주</option>
	                        <option value="대구">대구</option>
	                        <option value="대전">대전</option>
	                        <option value="부산">부산</option>
	                        <option value="서울">서울</option>
	                        <option value="세종">세종</option>
	                        <option value="울산">울산</option>
	                        <option value="인천">인천</option>
	                        <option value="전남">전남</option>
	                        <option value="전북">전북</option>
	                        <option value="제주">제주</option>
	                        <option value="충남">충남</option>
	                        <option value="충북">충북</option>
	                    </select>
	                
	            </div>
	        </div>
	        <div>
	        	<label for="phone">연락 가능 번호</label> 
	            <div class="form-group row pl-3">
	                <input type="text" class="form-control col-md-2" name ="phone1" id="phone1" placeholder="지역번호"> -   
	                <input type="text" class="form-control col-md-4" name ="phone2" id="phone2" placeholder="xxxx"> -
	                <input type="text" class="form-control col-md-4" name ="phone3" id="phone3" placeholder="xxxx"> 
	            </div> 
	        </div> 
	        <div>
	            <div class="form-group"> 
	                <label for="type">견종</label> 
	                <input type="text" class="form-control" name ="type" id="type" placeholder="견종 입력"> 
	            </div>
	        </div>  
	        <div>
	            <div class="form-group"> 
	                <label for="textAreaContent">상세 내용</label> 
	                <textarea style="width: 100%" rows="10" name="content" id="textAreaContent" cols="80"></textarea>
	            </div>
	        </div>
	        <input type="hidden" id="extractImg" name="extractImg"/>
	        <div style="text-align: right;">
	        	<button type="reset" class="btn btn-danger">이전</button> 
	            <button class="btn btn-danger" onclick="submitContents(this);">등록</button>
	        </div>
        </form>
    </div>
</div>
<script type="text/javascript">
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors,
	    elPlaceHolder: "textAreaContent",
	    sSkinURI: "<%=request.getContextPath()%>/se2/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
	 
	//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
	function submitContents() {
	    // 에디터의 내용이 textarea에 적용된다.
		
	   
	    oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", []);
	    
	   
	 
	    // 에디터의 내용에 대한 값 검증은 이곳에서
	    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
	  
	    try {
	        $('#fr').submit();
	    } catch(e) {
	     
	    }
	}
	 
	// textArea에 이미지 첨부
	function pasteHTML(filepath){
	    var sHTML = '<img src="<%=request.getContextPath()%>/uploadFolder/'+filepath+'">';
	    oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
	}
 
</script>


<%@ include file="/views/common/footer.jsp" %>