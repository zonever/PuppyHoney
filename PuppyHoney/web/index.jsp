<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
  //답글의반응
  
  $(function(){
    $('.btn-reply').on('click',function(){
      var form=$("<form action='#' method='post' name='boardReplyFrm'></form>");//<form>요소를 만듬!
      var html="<div class='row form-group pl-5 '>";
      html+= "<textarea rows='3' cols='130' name='replay' id='replay' style='resize: none;' ></textarea>"
        //히든으로몇개넣을것
      html+="<input type='submit' class='btn pull-right' style='width: 80px;' value='등록'>"
      form.html(html);
      form.insertAfter($(this).parent().parent().parent()).slideDown(800);
      $(this).off('click'); //답글버튼 한번만 인식되게..
    });
    //수정버튼의 반응
    $('.btn-revise').on('click',function(){
      alert("수정버튼의반응");
    });

    //삭제버튼 반응
    $('.btn-delete').on('click',function(){
      alert("삭제버튼의반응");
    });

    $('.btnRecommend').on("click",function(){
      alert('추천버튼의 반응');
    });
    

  });
</script>
<%@ include file="views/common/header.jsp" %>

<div class="container">

        <div class="row">
            <div class="col-sm-15">
                <table>
                    <tbody>
                        <tr>
                            <td class="align-middle" style="width: 400px" >
                                    
                                <font style="color: rgb(194, 142, 46)" >[분류]</font>한국에서 더워 죽을수도 있나요?<font style="color: rgb(236, 111, 111)">[50]</font>
        
                            </td>
                           
                        </tr>
                        
                        <tr>
                            
                            <td>
                                
                                <font style="font-size: 12px; float: left; line-height: 17.6px; text-align: left">닉네임임</font>
                                <font style="float: left; font-size: 12px; margin-left:4px; margin-right:4px; line-height: 17.6px; text-align: left">|</font>
                                <font style="font-size: 12px; float: left; line-height: 17.6px; text-align: left">조회 10</font>
                                <font style="float: left; font-size: 12px; margin-left:4px; margin-right:4px; line-height: 17.6px; text-align: left">|</font>
                                <font style=" float: left; font-size: 12px; letter-spacing: normal; line-height: 17.6px; text-align: left">2018-07-15. 22:40</font>

                            </td>
                        </tr>
                        </tbody>
                        </table>
                    <hr/>
            <p style="padding: 20px 2px 0 8px;">내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..내용입력란입니다..</p>
                <center><div class="pt-5"><button class="btn btnRecommend">추천 20</button></div></center>
                        
            </div>
            
        </div>
       <!--수정삭제버튼 (관리자나 본인일때만)-->
        <div class="container pt-5">
          <div class="form-group">
            <a class="btn btn-revise" style="color: #787878; font-family: gulim, 굴림, Helvetica; font-size: 12px;">수정</a>
            <font style="color: #787878; font-family: gulim, 굴림, Helvetica; font-size: 12px;">l</font>
            <a class="btn btn-delete" style="color: #787878; font-family: gulim, 굴림, Helvetica; font-size: 12px;">삭제</a>
          </div>
        </div>
        <!--수정삭제 버튼 끝-->
        
        <!--게시판읽기끝 코멘트갯수창-->
        <div class="container  pb-3">
      
          <div class="float-left" style="border-bottom: 1px black solid" >
            <img src="images/fa-comment.png"  alt="댓글사진" width="20px">
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
                <span class="btn" style="float: right; color: #e94a23;
                padding: 1px 4px;
                float: right;
                height: 18px;
                line-height: 14px; vertical-align: top;
                border: 1px solid #9f9f9f;
                font-size: 11px;
                background-color: #fff;
                
                font-family: dotum,sans-serif;
                cursor: pointer;">공감 0</span>
            </div>
            <div class="form-group">
              <span class="pl-2" style="font-size: 14px">그냥글씨인데 우짤래ㅔ?</span>
              <div class="pb-3"> 
                <a class="btn btn-reply float-right" style="color: #a7a7a7;font-size: 12px">[답글]</a>
              </div>
            </div>
          </div>
          <hr/>
          <!--댓글1개끝-->
          <!--답글 형태-->
          <div class="container pl-5">
              <div class="form-group">
                  <img src="images/ic_reply.png" alt="답글표시"><span><b>오상현이야</b></span> 
                  <span style="font-size: 8px; color: rgb(153, 151, 147)" >2018-07-21 01:00</span>
                  <!-- 클래스이름을 지정하고 벨류값에 코멘트넘버를 넣어서 보내면 됌. function 안에선 벨류값을 $(this).val()로 불러옴.
                      자세한건 보드뷰의 답글기능을 확인해봐
                  -->
                  <span class="btn" style="float: right; color: #e94a23;
                  padding: 1px 4px;
                  float: right;
                  height: 18px;
                  line-height: 14px; vertical-align: top;
                  border: 1px solid #9f9f9f;
                  font-size: 11px;
                  background-color: #fff;
                  
                  font-family: dotum,sans-serif;
                  cursor: pointer;">공감 0</span>
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
                <span class="btn" style="float: right; color: #e94a23;
                padding: 1px 4px;
                float: right;
                height: 18px;
                line-height: 14px; vertical-align: top;
                border: 1px solid #9f9f9f;
                font-size: 11px;
                background-color: #fff;
                
                font-family: dotum,sans-serif;
                cursor: pointer;">공감 0</span>
            </div>
            <div class="form-group">
              <span class="pl-2" style="font-size: 14px">그냥글씨인데 우짤래ㅔ?</span>
              <div class="pb-3"> 
                <a class="btn btn-reply float-right" style="color: #a7a7a7;font-size: 12px">[답글]</a>
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
                <span class="btn" style="float: right; color: #e94a23;
                padding: 1px 4px;
                float: right;
                height: 18px;
                line-height: 14px; vertical-align: top;
                border: 1px solid #9f9f9f;
                font-size: 11px;
                background-color: #fff;
                
                font-family: dotum,sans-serif;
                cursor: pointer;">공감 0</span>
            </div>
            <div class="form-group">
              <span class="pl-2" style="font-size: 14px">그냥글씨인데 우짤래ㅔ?</span>
              <div class="pb-3"> 
                <a class="btn btn-reply float-right" style="color: #a7a7a7;font-size: 12px">[답글]</a>
              </div>
            </div>
          </div>
            <!--세번째댓글끝-->


        <!--댓글창 끝 댓글입력창-->
       
        <form action="#" method="POST" name="boardCommentFrm">
          <div class=" row form-group pt-4 pl-4 "> 
            
              <!-- //글 내용이 많으므로 <textarea>태그를 쓴다 rows는 textarea의 높이 조절  -->
              <textarea rows="4" cols="135" name="content" id="content" style="resize: none;" ></textarea>
              <!--나중에 히든으로몇개 넣어야함.-->
              
              <input type="submit" class="btn pull-right float-right" style="width: 80px;" value="등록">
          </div>
        </form>
       
        <hr/>
        <!--댓글입력창 끝-->

        <div class="container pt-3">
          <div class="form-group">
          <button class="btn">목록</button>
          <button class="btn float-right"><img src="images/pencil.png" alt="연필사진" width="20">글쓰기</button>
          </div>
        </div>

      </div>

<%@ include file="views/common/footer.jsp" %>