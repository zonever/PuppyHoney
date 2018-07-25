<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
	<script>
      $(function(){
          $('#updatePage').on('click',function(){
            location.href="<%=request.getContextPath()%>/updateMemberPage";
          })
          $('#message').on('click',function(){
            window.open('message.jsp','message','top=50px, left=100px, height=600px, width=800px, resizable=no');
          })
          $('#findPage').on('click',function(){
            location.href="sidebar.html";
          })
          $('#deleteMember').on('click',function(){
            location.href="write.html";
          })
          $('#myHomepage').on('click',function(){
            location.href="testpage.html";
          }) 
      })
  </script>
  <style>
      td{
          width: 600px; height: 300px;
      }
      table{
          border: 5px outset;
          border-collapse: separate;
      } 
      tr td{
          border: 3px outset;
      }
  </style>
	<div class="container mt-5" style="text-align: center;">
        
        <h1>마이 페이지</h1>
        <br>
        
        <div class="btn-group m-2" style="display: inline-block;">
            <button id="updatePage" type="button" class="btn btn-outline-secondary">정보 수정</button>
            <button id="message" type="button" class="btn btn-outline-secondary">쪽지 함</button>
            <button id="findPage" type="button" class="btn btn-outline-secondary">즐겨찾기</button>
            <button id="deleteMember" type="button" class="btn btn-outline-secondary">회원 탈퇴</button>
            <button id="myHomepage" type="button" class="btn btn-outline-secondary">HOME</button>
        </div>
        <div class="p-3 pb-3">
            <table>
                <tr>
                    <td>1</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>4</td>
                </tr>
                
            </table>
        </div>
    </div>

<%@ include file="/views/common/footer.jsp" %>