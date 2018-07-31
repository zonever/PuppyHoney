<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.ph.user.model.vo.User"%>
<%@ include file="/views/common/header.jsp" %>
<%
	List<User> list = (List<User>)request.getAttribute("list");
	int cPage = Integer.parseInt(request.getAttribute("cPage").toString());
	String pageBar = request.getAttribute("pageBar").toString();

 
%>
<script>
$(document).ready(function(e){

    //상세보기 버튼 정보가지고 팝업창 오픈하기. 
    $('.btnc').on("click",function(){
        $(this).val();
        // var url = "http://www.naver.com?userId="+$(this).val();
        var url = "memberInfo.html"
        var title ="updatePassword";
		var status="left=100px, top=50px, width=800px; height=700px";
		var popup = window.open(url,title,status);
    });
});

//검색창에 빈값 확인
function check() {

if(fr.inputText.value == "") {

  alert("검색어를 입력해 주세요.");

  fr.inputText.focus();

  return false;

}else{
 return true;
    }
}

$(function(){
    $('.btnCheck').click(function(){
    	var option = $('select#sel1 option:selected').val();
    	if(option=="no"){
        	alert("분류를 선택해 주세요");
        	return false;
    	}
    });
});


</script>


        <div class="mt-4 form-group">
		<label><h3>회원리스트</h3></label>
       
        <div class="float-right pt-2">
            <form name="fr" action="<%=request.getContextPath()%>/infoBoard/search" onsubmit="return check()">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <select class="form-control" id="sel1" name="searchType">
                            <option value="no">선택</option>
                            <option value="USER_ID">ID</option>
                            <option value="USER_NICK">닉네임</option>
                            <option value="USER_EMAIL">E-MAIL</option>
                        </select>
                    </div>
                    <div class="input-group-append">
                    	<input type="text" class="form-control" name="inputText" placeholder="검색어 입력" id=inputText2>
                        <button class="btn btnCheck" type="submit"><img src="<%=request.getContextPath() %>/images/search.png"/></button> 
                    </div>
                </div>
            </form>
        </div>
            
	</div>      
            <table class="table table-hover"  style="table-layout:fixed; word-break:break-all;">
            <tbody>
                
                <tr style="background: gray">
                    <th>아이디</th>
                    <th>비밀번호</th>
                    <th>닉네임</th>
                    <th colspan="2">이메일</th>
                </tr>
                <%for(User u : list){
                	if(!u.getUserId().equals("admin")){%>	
                		<tr class="btnb">
                    
                   			 <td class="align-middle"><%=u.getUserId()%></td>
		                    <!-- 브라우저 사이즈가 폰크기초과일때ㅐ만 나오게 -->
		                    <td class="align-middle">
		                        <%=u.getUserPw()%>
		                    </td>
                    
		                    <td class="align-middle">
		                        <%=u.getUserNick() %>
		                    </td>
		                    <td class="align-middle">
		                        <%=u.getUserEmail() %>
		                    </td>
		                    <!-- 클래스이름을 지정하고 벨류값에 아이디를를 넣어서 보내면 됌. function 안에선 벨류값을 $(this).val()로 불러옴.
		                      자세한건 보드뷰의 답글기능을 확인해봐
		                  -->
                    <td class="align-middle">
                        <button class="btnc float-right" value="<%=u.getUserId()%>">상세보기</button>
                    </td>
                  
                </tr>
                <%}
                	}%>
                
                        
                        
                    </tbody>
                </table>        
                <hr/>
        
    <br><br>
    
    
    <!--페이징-->
    <div class="container">
        <div class="form-group">
            <nav class="align-content-center">
                <ul class="pagination justify-content-center">
                    <%=pageBar%>
                </ul>
            </nav>
        </div>
    </div>
<%@ include file="/views/common/footer.jsp" %>