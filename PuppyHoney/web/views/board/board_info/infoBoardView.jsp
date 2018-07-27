<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
	<style>
 		 img{max-width: 700px};
 	</style>
 	<!-- Smart Editor -->
<script type="text/javascript" src="<%=request.getContextPath()%>/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>
 	
<script>
//답글의반응
$(function(){
  $('.btn-reply').on('click',function(){
    var form=$("<form action='#' method='post' name='boardReplyFrm'></form>");//<form>요소를 만듬!
    var html="<div class='row form-group pl-5 '>";
    html+= "<textarea rows='3' cols='130' name='replay' id='replay' style='resize: none;' ></textarea>"
      //html+= 해서 히든으로몇개넣을것(가져온 게시판의 번호, 세션값의 아이디, 레벨(2로 고정), 해당댓글의번호 $(this).val() <<) 
    html+="<input type='submit' class='btn pull-right' style='width: 80px;' value='등록'>"
    form.html(html);
    form.insertAfter($(this).parent().parent().parent()).slideDown(800);
    $(this).off('click'); //답글버튼 한번만 인식되게..
  });
  //수정버튼의 반응
  $('.btn-revise').on('click',function(){
    var num = $(this).val();  //가져온 board객체의 번호로 줘도됌..
    alert(num);
    reviseFrm.boardNum.value=num;
    var url="http://www.naver.com";
    reviseFrm.action=url
    reviseFrm.method="get";
    reviseFrm.submit();
  });

  //삭제버튼 반응
  $('.btn-delete').on('click',function(){
    var flag = confirm("정말로 삭제 하시겠습니까?");
    if(flag==false){
      return;
    }
    var num = $(this).val();  //가져온 board객체의 번호로 줘도됌..
    alert(num);
    deleteFrm.boardNum.value=num;
    var url="http://www.naver.com";
    deleteFrm.action=url
    deleteFrm.method="post";
    deleteFrm.submit();
  });

//추천버튼 반응 (나중에 url 서블릿으로 바꿔주면댐) btn에 board값을 넣지말고 num값에 가져온 board객체의 번호로 줘도됌..
  $('.btnRecommend').on("click",function(){
    var num = $(this).val();
    alert(num);
    recommendFrm.boardNum.value=num;
    var url="http://www.naver.com";
    recommendFrm.action=url
    recommendFrm.method="post";
    recommendFrm.submit();
  });

//댓글공감버튼(나중에 url 서블릿으로 바꿔주면댐)
  $(".btn-gonggam").on("click",function(){
    var num = $(this).val();
    alert(num);
    gonggamFrm.replayNum.value=num;
    var url="http://www.naver.com";
    gonggamFrm.action=url
    gonggamFrm.method="post";
    gonggamFrm.submit();

  })
  

});

function fn_goWrite(){
	location.href="<%=request.getContextPath()%>/infoBoard/write";
}

</script>

<div class="container row">
	<div class="col-sm-12">
		<table>
			<tbody>
				<tr>
					<td class="align-middle" style="width: 400px">
						한국에서 더워 죽을수도 있나요?<font style="color: rgb(236, 111, 111);">[50]</font>
					</td>
				</tr>
				<tr>
					<td>    
						<font id="BoardViewWriter">닉네임임</font>
						<font id="BoardViewLine">|</font>
						<font id="BoardViewInquiry">조회 10</font>
						<font id="BoardViewLine">|</font>
						<font id="BoardViewDate">2018-07-15. 22:40</font>
					</td>
				</tr>
			</tbody>
		</table>
		<hr/>
		<div class="pt-2"></div>
		<p>내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..</p>
		<!-- 버튼 벨류값에 보드넘버 가지고있기-->  
		<div class="pt-5" align="center"><button class="btn btnRecommend">추천 20</button></div>       
	</div>
</div>
<!--수정삭제버튼 (관리자나 본인일때만)-->
<div class="container pt-5">
	<div class="form-group">
		<a class="btn btn-revise">수정</a>
		<font id="BoardViewLine2">l</font>
		<a class="btn btn-delete">삭제</a>
	</div>
</div>
<!--수정삭제 버튼 끝-->

<!--게시판읽기끝 코멘트갯수창-->
<div class="container  pb-3">
	<div class="float-left" style="border-bottom: 1px black solid" >
		<img src="<%=request.getContextPath() %>/images/fa-comment.png"  alt="댓글사진" width="20px">
		<span class="custom-control-inline text-danger p-0" style="font-size: 20px">50 <font class="p-0" style="font-size: 20px;color: black"> comment</font></span>
	</div>
</div>
<!--코멘트갯수창끝-->
<br><br>
<!--댓글시작-->
<div class="container pl-4">
	<div class="form-group">
		<span><b>닉네임이야</b></span> 
		<span style="font-size: 8px; color: rgb(153, 151, 147)" >2018-07-21 01:00</span>
		<!--댓글,답글의 삭제버튼(운영자,본인) 벨류값안에 코멘트넘버를 가지고 있기.-->
		<div class="pr-2" style="display: inline;"></div>
		<button class="btn btn-redelete" style="color: #e94a23; padding: 1px 4px; height: 18px;
		line-height: 14px; vertical-align: top;
		border: 1px solid #9f9f9f;
		font-size: 11px;
		background-color: #fff;
		
		font-family: dotum,sans-serif;
		cursor: pointer;" value="33">삭제</button>
		
		<!-- 클래스이름을 지정하고 벨류값에 코멘트넘버를 넣어서 보내면 됌. function 안에선 벨류값을 $(this).val()로 불러옴.
		      자세한건 맴버뷰의 삭제기능을 확인해봐 그럼기능구현가능할껄~?-->
		<button class="btn btn-gonggam" style="float: right; color: #5e23e9;
		padding: 1px 4px;
		
		height: 18px;
		line-height: 14px; vertical-align: top;
		border: 1px solid #9f9f9f;
		font-size: 11px;
		background-color: #fff;
		font-family: dotum,sans-serif;
		cursor: pointer;" value="34234323">공감 0</button>
	</div>
	<div class="form-group">
		<span class="pl-2" style="font-size: 14px">그냥글씨인데 우짤래ㅔ?</span>
		<div class="pb-3"> 
			<!-- 답글버튼에도 벨류값에 게시판 넘버를 가지고있어줘야해 그래야 함수에서 불러와서 쓸거니까!(레벨이1일때만 보여줄거야~) -->
			<button class="btn btn-light btn-reply float-right" style="color: #a7a7a7;font-size: 12px; background:#00FF0000" value="3423423">[답글]</button>
		</div>
	</div>
</div>
<hr/>
<!--댓글1개끝-->
<!--답글 형태 (레벨이 2일때만 보여주기)-->
<div class="container pl-5">
	<div class="form-group">
		<img src="<%=request.getContextPath() %>/images/ic_reply.png" alt="답글표시"><span><b>오상현이야</b></span> 
		<span style="font-size: 8px; color: rgb(153, 151, 147)" >2018-07-21 01:00</span>
		
		<!--댓글,답글의 삭제버튼(운영자,본인) 벨류값안에 코멘트넘버를 가지고 있기.-->
		<div class="pr-2" style="display: inline;"></div>
		<button class="btn btn-redelete" style="color: #e94a23; padding: 1px 4px; height: 18px;
		line-height: 14px; vertical-align: top;
		border: 1px solid #9f9f9f;
		font-size: 11px;
		background-color: #fff;
		
		font-family: dotum,sans-serif;
		cursor: pointer;" value="33">삭제</button>
		
		<!-- 클래스이름을 지정하고 벨류값에 코멘트넘버를 넣어서 보내면 됌. function 안에선 벨류값을 $(this).val()로 불러옴.
		    자세한건 맴버뷰의 삭제기능을 확인해봐
		-->
		<button class="btn btn-gonggam" style="float: right; color: #5e23e9;
		padding: 1px 4px;
		float: right;
		height: 18px;
		line-height: 14px; vertical-align: top;
		border: 1px solid #9f9f9f;
		font-size: 11px;
		background-color: #fff;
		
		font-family: dotum,sans-serif;
		cursor: pointer;" value="3">공감 0</button>
	</div>
	<div class="form-group">
		<span class="pl-2" style="font-size: 14px">그냥글씨인데 우짤래ㅔ?</span>                
	</div>
</div>
<hr/>
<!--답글형태끝-->

<!--두번째댓글(복붙)-->
<div class="container pl-4">
	<div class="form-group">
		<span><b>닉네임이야</b></span> 
		<span style="font-size: 8px; color: rgb(153, 151, 147)" >2018-07-21 01:00</span>
		<!--댓글,답글의 삭제버튼(운영자,본인) 벨류값안에 코멘트넘버를 가지고 있기.-->
		<div class="pr-2" style="display: inline;"></div>
		<button class="btn btn-redelete" style="color: #e94a23; padding: 1px 4px; height: 18px;
		line-height: 14px; vertical-align: top;
		border: 1px solid #9f9f9f;
		font-size: 11px;
		background-color: #fff;
		
		font-family: dotum,sans-serif;
		cursor: pointer;" value="33">삭제</button>
		
		<!-- 클래스이름을 지정하고 벨류값에 코멘트넘버를 넣어서 보내면 됌. function 안에선 벨류값을 $(this).val()로 불러옴.
		      자세한건 맴버뷰의 삭제기능을 확인해봐 그럼기능구현가능할껄~?-->
		<button class="btn btn-gonggam" style="float: right; color: #5e23e9;
		padding: 1px 4px;
		
		height: 18px;
		line-height: 14px; vertical-align: top;
		border: 1px solid #9f9f9f;
		font-size: 11px;
		background-color: #fff;
		font-family: dotum,sans-serif;
		cursor: pointer;" value="34234323">공감 0</button>
	</div>
	<div class="form-group">
		<span class="pl-2" style="font-size: 14px">그냥글씨인데 우짤래ㅔ?</span>
		<div class="pb-3"> 
			<!-- 답글버튼에도 벨류값에 게시판 넘버를 가지고있어줘야해 그래야 함수에서 불러와서 쓸거니까!(레벨이1일때만 보여줄거야~) -->
			<button class="btn btn-light btn-reply float-right" style="color: #a7a7a7;font-size: 12px; background:#00FF0000" value="3423423">[답글]</button>
		</div>
	</div>
</div>
<hr/>
<!--두번째댓글끝-->
<!--세번째댓글(복붙)-->
<div class="container pl-4">
	<div class="form-group">
		<span><b>닉네임이야</b></span> 
		<span style="font-size: 8px; color: rgb(153, 151, 147)" >2018-07-21 01:00</span>
		<!--댓글,답글의 삭제버튼(운영자,본인) 벨류값안에 코멘트넘버를 가지고 있기.-->
		<div class="pr-2" style="display: inline;"></div>
		<button class="btn btn-redelete" style="color: #e94a23; padding: 1px 4px; height: 18px;
		line-height: 14px; vertical-align: top;
		border: 1px solid #9f9f9f;
		font-size: 11px;
		background-color: #fff;
		
		font-family: dotum,sans-serif;
		cursor: pointer;" value="33">삭제</button>
		
		<!-- 클래스이름을 지정하고 벨류값에 코멘트넘버를 넣어서 보내면 됌. function 안에선 벨류값을 $(this).val()로 불러옴.
		      자세한건 맴버뷰의 삭제기능을 확인해봐 그럼기능구현가능할껄~?-->
		<button class="btn btn-gonggam" style="float: right; color: #5e23e9;
		padding: 1px 4px;
		
		height: 18px;
		line-height: 14px; vertical-align: top;
		border: 1px solid #9f9f9f;
		font-size: 11px;
		background-color: #fff;
		font-family: dotum,sans-serif;
		cursor: pointer;" value="34234323">공감 0</button>
	</div>
	<div class="form-group">
		<span class="pl-2" style="font-size: 14px">그냥글씨인데 우짤래ㅔ?</span>
		<div class="pb-3"> 
			<!-- 답글버튼에도 벨류값에 게시판 넘버를 가지고있어줘야해 그래야 함수에서 불러와서 쓸거니까!(레벨이1일때만 보여줄거야~) -->
			<button class="btn btn-light btn-reply float-right" style="color: #a7a7a7;font-size: 12px; background:#00FF0000" value="3423423">[답글]</button>
		</div>
	</div>
</div>
<hr/>
<!--세번째댓글끝-->


<!--댓글창 끝 댓글입력창-->
       
    <form action="#" method="POST" name="boardCommentFrm">
      <div class=" form-group pt-4 pl-4 "> 
        
          <!-- //글 내용이 많으므로 <textarea>태그를 쓴다 rows는 textarea의 높이 조절  -->
          <div class="pr-3">
          	<textarea style= "width: 100%" rows="3" name="comment" id="textAreaContent"></textarea>
          </div>
          <!--나중에 히든으로  넣어야함-->
          <input type="hidden" name="commentWriter" value="???"><!--나중에 헤더에서 가져올 세션값.id를 넣어야함-->
          <div class="pr-3">
          	<input type="submit" class="btn pull-right float-right" style="width: 80px;" value="등록" onclick="submitContents()">
      	  </div>
      </div>
    </form>
   <br><br>
    <hr/>
    <!--댓글입력창 끝-->

<div class="container pt-3">
	<div class="form-group">
		<button class="btn">목록</button>
		<button class="btn float-right" onclick="fn_goWrite()"><img src="<%=request.getContextPath() %>/images/pencil.png" alt="연필사진" width="20">글쓰기</button>
	</div>
</div>



<!--버튼들을 적용시키기 위한 폼-->
        <form name="reviseFrm">
            <input type="hidden" name="boardNum">
        </form>

        <!--삭제버튼을 적용시키기 위한 폼-->
        <form name="deleteFrm">
            <input type="hidden" name="boardNum">
        </form>

        <!--추천버튼을 적용시키기 위한 폼-->
        <form name="recommendFrm">
          <input type="hidden" name="boardNum">
        </form>
        <!--공감버튼을 적용시키기 위한 폼-->
        <form name="gonggamFrm">
          <input type="hidden" name="replayNum"> 
        </form>
      
      
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
 
    // 에디터의 내용에 대한 값 검증은 이곳에서
    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
  
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

<%@ include file="/views/common/footer.jsp" %>