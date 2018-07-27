<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<div class="container col-sm-8 mt-5">

    <h1 class="mt-4 mb-3">글쓰기</h1>  

    <div class="ml-5 mr-5">
        <div>
            <div class="form-group"> 
                <label for="title">제목</label> 
                <input type="text" class="form-control" name="title" id="title" placeholder="제목 입력"> 
            </div> 
        </div>  
        <div>
            <div class="form-group">
                <form>
                    <label for="address">지역 입력</label>
                    <select name="address" class="custom-select">
                        <option selected>지역 선택</option>
                        <option value="">서울</option>
                        <option value="">경기</option>
                        <option value="">강원</option>
                        <option value="">경남</option>
                        <option value="">경북</option>
                        <option value="">전남</option>
                        <option value="">전북</option>
                        <option value="">충남</option>
                        <option value="">충북</option>
                        <option value="">제주</option>
                        <option value="">세종</option>
                        <option value="">기타</option>
                    </select>
                </form>
            </div>
        </div>
        <div>
        	<label for="phone">연락 가능 번호</label> 
            <div class="form-group row pl-3">
                <input type="text" class="form-control col-md-2" name ="phone" id="phone1" placeholder="지역번호"> -   
                <input type="text" class="form-control col-md-4" name ="phone" id="phone2" placeholder="xxxx"> -
                <input type="text" class="form-control col-md-4" name ="phone" id="phone3" placeholder="xxxx"> 
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
                <label for="content">상세 내용</label> 
                <textarea class="form-control" rows="10" name="content" id="content"></textarea> 
            </div>
        </div>
        <div style="text-align: right;">
        	<button type="reset" class="btn btn-danger">이전</button> 
            <button type="submit" class="btn btn-danger" >등록</button>
        </div>
    </div>
</div>    
<%@ include file="/views/common/footer.jsp" %>