<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>

<div class="panel panel-default"> 
            <!-- Default panel contents --> 
            <div class="panel-heading"><h2>Write</h2></div> 
            
            <div class="panel-body">
            
                <div class="container"> 
                    <!-- board테이블에 저장하기 위한 form.  -->
                    <form action="#" method="post" role="form">  
            
                        
                            
           
                        
                            <!-- //글제목 입력 폼 -->
                            <div class="form-group"> 
                                <label for="subject">Title</label> 
                                <input type="text" class="form-control" name ="subject" id="subject" placeholder="제목을 입력하세요."> 
                            </div> 
                        
                            <!-- //글내용 입력 폼  -->
                            <div class="form-group"> 
                                <label for="content">content:</label> 
                                <!-- //글 내용이 많으므로 <textarea>태그를 쓴다 rows는 textarea의 높이 조절  -->
                                  <textarea name="content" id="summernote" cols="30" rows="10"></textarea>
                                  <script>
                                    $('#summernote').summernote({
                                      placeholder: 'Hello bootstrap 4',
                                      tabsize: 2,
                                      height: 500
                                    });
                                  </script>
                            </div>
                            <!--//파일 첨부 폼 (나중에 쓸거 생각해서 만들어 봄 )   -->
                            <!-- <div class="form-group"> 
                                <label for="File">File input</label> 
                                <input type="file" id="File"> 
                            </div>  -->
                            <!-- //버튼 저장하기, 다시쓰기, 되돌아가기 -->
                            <div class="center-block ">      
                                <input type="submit" value="등록" class="btn btn-outline-secondary" style="width: 100px; height: 50px">
                                <input type="reset" value="취소" class="btn btn-outline-secondary  float-right" style="width: 100px; height: 50px"> 
                                <!-- //되돌아가기에서 onclick이벤트로 history.back(1) 왔던곳에서 1만큼 back (-1을 써도 된다)  -->
                                <!-- <br><br>
                                <input type="button" value="Back" onclick="history.back(1)"> -->
                            </div> 
                        </form>
               
                </div> 
            </div> <!--panel end--> 
        </div> 
<%@ include file="/views/common/footer.jsp" %>