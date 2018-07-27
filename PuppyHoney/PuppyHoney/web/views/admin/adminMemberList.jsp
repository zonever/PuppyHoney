<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>

<script>
$(document).ready(function(e){
//검색창 분류선택시 스크립트문
    
    $('.search-panel .dropdown-menu').find('a').click(function(e) {
		e.preventDefault();
		var param = $(this).attr("href").replace("#",""); //분류
		var concept = $(this).text(); //분류(한국말)   
		$('.search-panel span#search_concept').text(concept);
		$('.input-group #searchType').val(param);
	});
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

if(fr.search_key.value == "") {

  alert("검색어를 입력해 주세요.");

  fr.search_key.focus();

  return false;

}else{
 return true;
    }
}


</script>


        <div class="mt-4 form-group">
		<label><h3>회원리스트</h3></label>
       
        <div class="float-right pt-2">
            <form>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <select class="form-control" id="sel1">
                            <option>선택</option>
                            <option value="id">ID</option>
                            <option value="nickName">닉네임</option>
                            <option value="email">E-MAIL</option>
                        </select>
                    </div>
                    <div class="input-group-append">
                    	<input type="text" class="form-control" name="inputText" placeholder="검색어 입력">
                        <button class="btn " type="submit"><img src="<%=request.getContextPath() %>/images/search.png"/></button> 
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
                <tr class="btnb">
                    
                    <td class="align-middle">아이디야</td>
                    <!-- 브라우저 사이즈가 폰크기초과일때ㅐ만 나오게 -->
                    <td class="align-middle">
                        비번이야
                    </td>
                    
                    <td class="align-middle">
                        닉넴이야
                    </td>
                    <td class="align-middle">
                        dasmdklsadml@naver.com
                    </td>
                    <!-- 클래스이름을 지정하고 벨류값에 아이디를를 넣어서 보내면 됌. function 안에선 벨류값을 $(this).val()로 불러옴.
                      자세한건 보드뷰의 답글기능을 확인해봐
                  -->
                    <td class="align-middle">
                        <button class="btnc float-right" value="내아이디야">상세보기</button>
                    </td>
                  
                </tr>
                <tr class="btnb">
                    
                        <td class="align-middle">아이디야</td>
                        <!-- 브라우저 사이즈가 폰크기초과일때ㅐ만 나오게 -->
                        <td class="align-middle">
                            비번이야
                        </td>
                        
                        <td class="align-middle">
                            닉넴이야
                        </td>
                        <td class="align-middle">
                            dasmdklsadml@naver.com
                        </td>
                        <td class="align-middle">
                            <button class="btnc float-right">상세보기</button>
                        </td>
                      
                    </tr>
                    <tr class="btnb">
                    
                            <td class="align-middle">아이디야</td>
                            <!-- 브라우저 사이즈가 폰크기초과일때ㅐ만 나오게 -->
                            <td class="align-middle">
                                비번이야
                            </td>
                            
                            <td class="align-middle">
                                닉넴이야
                            </td>
                            <td class="align-middle">
                                dasmdklsadml@naver.com
                            </td>
                            <td class="align-middle">
                                <button class="btnc float-right">상세보기</button>
                            </td>
                          
                        </tr>
                        
                        
                    </tbody>
                </table>        
                <hr/>
        
    <br><br>
    
    
    <!--페이징-->
    <div class="container">
        <div class="form-group">
            <nav class="align-content-center">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
<%@ include file="/views/common/footer.jsp" %>