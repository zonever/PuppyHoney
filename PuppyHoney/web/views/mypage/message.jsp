<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.ph.message.model.vo.Message, java.util.List"%>
    <%
    	List<Message> list=(List)request.getAttribute("list");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <title>Document</title>
    <style>
        tr:first-child{width:150px;}
        .inlineb{display: inline-block;}
    </style>
</head>
<body>
        <!-- 체크박스 전체선택 펑션 -->
        <script>
                $(function()
                {
                   $('#customCheck').click(function()
                   {
                        if($('#customCheck').prop("checked"))
                        {
                            $('input[type=checkbox]').prop('checked',true);
                        }
                        else
                        {
                            $('input[type=checkbox]').prop('checked',false);
                        }
                   });
                });               
            </script>
    <div class="container mt-3">
        <h2 style="text-align: center;">OOO님의 쪽지함</h2>
        <br>
        
        <ul class="nav nav-tabs">
            <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#home">받은 쪽지함</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#menu1">보낸 쪽지함</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#menu2">쪽지 보내기</a>
            </li>
        </ul>

        <div class="tab-content">
            <div id="home" class="container tab-pane active">
            <h3 class="mt-3" style="display: inline-block;">받은 쪽지함</h3>
            
            <table class="table table-hover">
               <tr style="background: rgb(200, 152, 152)">
                  <th class="wideth" style="display: inline-block;">
	                  <div class="input-group inlineb">
	                  	<div class="custom-control custom-checkbox inlineb">
		                    <input type="checkbox" class="custom-control-input inlineb" id="customCheck" name="example1">
		                    <label class="custom-control-label ilineb" for="customCheck"></label>
	                     </div>
	                     <div class="inlineb">
			           	 	<input type="button" class='btn btn-danger' value="삭제">
			             </div>
	                  </div> 
                  </th>
                  <th>제목</th>
                  <th>닉네임</th>
                  <th>날짜</th>
               </tr>
               <%if(list!=null){
            	   for(Message m : list){ %>
               
                <tr>
                   <th> 
	                   <div class="custom-control custom-checkbox">
		                   <input type="checkbox" class="custom-control-input" id="customCheck<%=m.getMessageNum() %>" name="example1">
		                   <label class="custom-control-label" for="customCheck1"></label>
	                   </div>
                   </th>
                   <td><%=m.getMessageTitle() %></td>
                   <td><%=m.getMessageWriter() %></td>
                   <td><%=m.getMessageDate() %></td>
                </tr>
                
                <%}
            	}%>
                <!-- <tr>
               	   <th> 
	                   <div class="custom-control custom-checkbox">
	                   <input type="checkbox" class="custom-control-input" id="customCheck2" name="example1">
	                   <label class="custom-control-label" for="customCheck2"></label>
	                   </div>
                   </th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th> 
                     <div class="custom-control custom-checkbox">
                   <input type="checkbox" class="custom-control-input" id="customCheck3" name="example1">
                   <label class="custom-control-label" for="customCheck3"></label>
                   </div>
                </th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th> 
                     <div class="custom-control custom-checkbox">
                   <input type="checkbox" class="custom-control-input" id="customCheck4" name="example1">
                   <label class="custom-control-label" for="customCheck4"></label>
                   </div>
                </th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th> 
                     <div class="custom-control custom-checkbox">
                   <input type="checkbox" class="custom-control-input" id="customCheck5" name="example1">
                   <label class="custom-control-label" for="customCheck5"></label>
                   </div>
                </th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th> 
                     <div class="custom-control custom-checkbox">
                   <input type="checkbox" class="custom-control-input" id="customCheck6" name="example1">
                   <label class="custom-control-label" for="customCheck6"></label>
                   </div>
                </th>
                    <td>제……….목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr> -->
            </table>
            </div>


            
            <div id="menu1" class="container tab-pane fade">
            <h3 class="mt-3" style="display: inline-block;">보낸 쪽지함</h3>
            <table class="table table-hover">
               <tr style="background: rgb(200, 152, 152)">
                  <th class="wideth" style="display: inline-block;">
	                  <div class="input-group inlineb">
	                  	<div class="custom-control custom-checkbox inlineb">
		                    <input type="checkbox" class="custom-control-input inlineb" id="customCheck" name="example1">
		                    <label class="custom-control-label ilineb" for="customCheck"></label>
	                     </div>
	                     <div class="inlineb">
			           	 	<input type="button" class='btn btn-danger' value="삭제">
			             </div>
	                  </div> 
                  </th>
                  <th>제목</th>
                  <th>닉네임</th>
                  <th>날짜</th>
               </tr>
                <tr>
                    <th> 
                        <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck6" name="example1">
                        <label class="custom-control-label" for="customCheck6"></label>
                        </div>
                    </th>
                    <td>제……….목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th> 
                        <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck6" name="example1">
                        <label class="custom-control-label" for="customCheck6"></label>
                        </div>
                    </th>
                    <td>제……….목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th> 
                        <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck6" name="example1">
                        <label class="custom-control-label" for="customCheck6"></label>
                        </div>
                    </th>
                    <td>제……….목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th> 
                        <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck6" name="example1">
                        <label class="custom-control-label" for="customCheck6"></label>
                        </div>
                    </th>
                    <td>제……….목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th> 
                        <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck6" name="example1">
                        <label class="custom-control-label" for="customCheck6"></label>
                        </div>
                    </th>
                    <td>제……….목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th> 
                        <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck6" name="example1">
                        <label class="custom-control-label" for="customCheck6"></label>
                        </div>
                    </th>
                    <td>제……….목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
            </table>
            </div>
            <div id="menu2" class="container tab-pane fade"><br>
            <h3>쪽지 보내기</h3>
            <table class="table table-hover ">
                <tr>
                    <th colspan="1"><h6>받는 사람</h6><input class="form-control col-md-2"type="text" placeholder="닉네임"></th>
                </tr>
                <tr>
                    <th colspan="3"><h6>제목</h6><input class="form-control  col-md-6"type="text" placeholder="제목"></th>
                </tr>
                <tr>
                    <th colspan="1"><h6>내용</h6><textarea class="form-control" name='textarea' cols="150" rows="11" style='resize: none;'></textarea></th>
                 
                </tr>
            </table>    
            <button class="btn m-2 alert-danger">보내기</button>
            <button class="btn alert-danger">취소</button>

            </div>
        </div>
    </div>
</body>
</html>