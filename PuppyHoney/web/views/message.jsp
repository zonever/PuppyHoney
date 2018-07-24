<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        th{width:10px;}
    </style>
</head>
<body>
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
            <div id="home" class="container tab-pane active"><br>
            <h3>받은 쪽지함</h3>
            <table class="table table-hover">
            	<tr style="background: rgb(200, 152, 152)">
            		<th><input type="checkbox" id="check"/></th>
            		<th>제목</th>
            		<th>닉네임</th>
            		<th>날짜</th>
            	</tr>
                <tr>
                	<th><input type="checkbox" id="check"/></th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
					<th><input type="checkbox" id="check"/></th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th><input type="checkbox" id="check"/></th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th><input type="checkbox" id="check"/></th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th><input type="checkbox" id="check"/></th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th><input type="checkbox" id="check"/></th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
            </table>
            </div>
            <div id="menu1" class="container tab-pane fade"><br>
            <h3>보낸 쪽지함</h3>
            <table class="table table-hover">
            	<tr style="background: rgb(200, 152, 152)">
            		<th><input type="checkbox" id="check"/></th>
            		<th>제목</th>
            		<th>닉네임</th>
            		<th>날짜</th>
            	</tr>
                <tr>
                    <th><input type="checkbox" id="check"/></th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th><input type="checkbox" id="check"/></th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th><input type="checkbox" id="check"/></th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th><input type="checkbox" id="check"/></th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th><input type="checkbox" id="check"/></th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
                <tr>
                    <th><input type="checkbox" id="check"/></th>
                    <td>제..........목</td>
                    <td>닉네임</td>
                    <td>날짜</td>
                </tr>
            </table>
            </div>
            <div id="menu2" class="container tab-pane fade"><br>
            <h3>쪽지 보내기</h3>
            
            </div>
        </div>
    </div>
</body>
</html>