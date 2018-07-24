 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>

<div class="container">
          <!-- Page Heading/Breadcrumbs -->
          <h1 class="mt-4 mb-3 "style="margin-top: 5rem!important;"><a href="placeBoard.html">장소게시판</a>
            <small>All dogs go to heaven</small>
          </h1>
    
          
          <div class="form-group" align='right'>
              <button class="btn btn-dark col-md-1" onclick="location.href='prpage.html'">글쓰기</button>
            </div>
            
            
            <div class="col-lg-12 p-1 btn-light">
                <button type="button" class="btn btn-dark m-3" data-toggle="collapse" data-target="#demo" aria-expanded="false" aria-controls="collapseExample">
                    필 터
                  </button>
            <div id="demo" class="collapse m-3">
              <form action="test.html" method="get">
                <span class="badge badge-secondary col-md-2"><h4>지역검색</h4></span>
                <br><br>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='seoul' value="서울"> 서울
                </label>
                <label for='kyeong' class="btn btn-dark">
                  <input type="checkbox" name="addr" id='kyeong' value="경기"> 경기
                </label>
                <label class="btn btn-dark">
                  <input type="checkbox"name="addr" id='incheon' value="인천"> 인천
                </label>
                <label class="btn btn-dark">
                  <input type="checkbox" name="addr" id='busan' value="부산">부산 
                </label>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='daegu' value="대구"> 대구
                </label>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='daejeon' value="대전"> 대전
                </label>        
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='ulsan' value="울산"> 울산
                </label>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='gangwon' value="강원"> 강원
                </label>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='kyeongnam' value="경남"> 경남
                </label>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='kyeongbuk' value="경북"> 경북
                </label>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='gwangju' value="광주"> 광주
                </label>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='jeonnam' value="전남"> 전남
                </label>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='jeonbuk' value="전북"> 전북
                </label>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='chungnam' value="충남"> 충남
                </label>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='chungbuk' value="충북"> 충북
                </label>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='jeju' value="제주"> 제주
                </label>
                <label for='seoul' class="btn btn-dark ">
                  <input type="checkbox" name="addr" id='sejong' value="세종"> 세종
                </label>

                <br><br>   
                <span class="badge badge-secondary col-md-2"><h4>업종검색</h4></span>
                <br><br>
                <label for='cafe' class="btn btn-dark">
                    <input type="checkbox" name="business" id='cafe' value="카페"> 카페
                </label>
                <label for='beauti' class="btn btn-dark">
                    <input type="checkbox" name="business" id='beauti' value="미용"> 미용
                </label>
                <label for='hosiptal' class="btn btn-dark">
                    <input type="checkbox" name="business" id='hosiptal' value="병원"> 병원
                  </label>  
                  <input type="submit" value='검색' class="btn col-md-2"style="float:right;">

              </form>
            </div>
          </div>
            

          <br><br>
          
     
            
           
    
        
   <!-- Page Content 내용부분  -->
   <div class="row">
      <div class="col-lg-4 col-sm-6 portfolio-item petCard">
        <div class="card h-80">
          <a href="#"><img class="card-img-top" src="http://blogfiles9.naver.net/MjAxNzA4MDlfMjIy/MDAxNTAyMjg0NjIwMTk3.r5_I7z0kljQ28-YxUJU_7dzAHIHzCuUR7MAmRKgner4g.c16Xutpi19uob68JQu6v2Y514RQXll6b6bN_HBYaqHAg.JPEG.yuwlsfks/IMG_0516.jpg" width="700" height="230"></a>
          <div class="card-body">
            <h4 class="card-img-top">
              <p class="text-center"><a href="#">1.버디펫</a></p>
            </h4>
            <table>
                <tr>
                  <th>업종 : </th>
                  <th>미용</th>
                </tr>
                <hr>
                <tr>
                  <th>주소 : </th>
                  <th>경기도 수원시</th>
                </tr>
                
                <tr>
                  <th>입장 : </th>
                  <th>소형, 중형</th>
                </tr>
              </table>
              <hr>
          </div>
        </div>
      </div>



      <div class="col-lg-4 col-sm-6 petCard">
        <div class="card h-80">
          <a href="#"><img class="card-img-top" src="http://blogfiles9.naver.net/MjAxNzA4MDlfMjIy/MDAxNTAyMjg0NjIwMTk3.r5_I7z0kljQ28-YxUJU_7dzAHIHzCuUR7MAmRKgner4g.c16Xutpi19uob68JQu6v2Y514RQXll6b6bN_HBYaqHAg.JPEG.yuwlsfks/IMG_0516.jpg" width="700" height="230"></a>
          <div class="card-body">
            <h4 class="card-title">
              <p class="text-center"><a href="#">2.버디펫</a></p>
            </h4>
            <table>
                <tr>
                  <th>업종 : </th>
                  <th>미용</th>
                </tr>
                <hr>
                <tr>
                  <th>주소 : </th>
                  <th>경기도 수원시</th>
                </tr>
                
                <tr>
                  <th>입장 : </th>
                  <th>중형,대형 </th>
                </tr>
              </table>
              <hr>
          </div>
        </div>
      </div>

      <div class="col-lg-4 col-sm-6 petCard">
        <div class="card h-80">
          <a href="#"><img class="card-img-top" src="http://blogfiles9.naver.net/MjAxNzA4MDlfMjIy/MDAxNTAyMjg0NjIwMTk3.r5_I7z0kljQ28-YxUJU_7dzAHIHzCuUR7MAmRKgner4g.c16Xutpi19uob68JQu6v2Y514RQXll6b6bN_HBYaqHAg.JPEG.yuwlsfks/IMG_0516.jpg" width="700" height="230"></a>
          <div class="card-body">
            <h4 class="card-title">
              <p class="text-center"><a href="#">3.버디펫</a></p>
            </h4>
            <table>
                <tr>
                  <th>업종 : </th>
                  <th>미용</th>
                </tr>
                <hr>
                <tr>
                  <th>주소 : </th>
                  <th>경기도 수원시</th>
                </tr>
                
                <tr>
                  <th>입장 : </th>
                  <th>중형,대형 </th>
                </tr>
              </table>
              <hr>
          </div>
        </div>
      </div>

      <div class="col-lg-4 col-sm-6 petCard">
        <div class="card h-80">
          <a href="#"><img class="card-img-top" src="http://blogfiles9.naver.net/MjAxNzA4MDlfMjIy/MDAxNTAyMjg0NjIwMTk3.r5_I7z0kljQ28-YxUJU_7dzAHIHzCuUR7MAmRKgner4g.c16Xutpi19uob68JQu6v2Y514RQXll6b6bN_HBYaqHAg.JPEG.yuwlsfks/IMG_0516.jpg" width="700" height="230"></a>
          <div class="card-body">
            <h4 class="card-title">
              <p class="text-center"><a href="#">4.버디펫</a></p>
            </h4>
            <table>
                <tr>
                  <th>업종 : </th>
                  <th>미용</th>
                </tr>
                <hr>
                <tr>
                  <th>주소 : </th>
                  <th>경기도 수원시</th>
                </tr>
                
                <tr>
                  <th>입장 : </th>
                  <th>중형,대형 </th>
                </tr>
              </table>
              <hr>
          </div>
        </div>
      </div>

      <div class="col-lg-4 col-sm-6 petCard">
        <div class="card h-80">
          <a href="#"><img class="card-img-top" src="http://blogfiles9.naver.net/MjAxNzA4MDlfMjIy/MDAxNTAyMjg0NjIwMTk3.r5_I7z0kljQ28-YxUJU_7dzAHIHzCuUR7MAmRKgner4g.c16Xutpi19uob68JQu6v2Y514RQXll6b6bN_HBYaqHAg.JPEG.yuwlsfks/IMG_0516.jpg" width="700" height="230"></a>
          <div class="card-body">
            <h4 class="card-title">
              <p class="text-center"><a href="#">5.버디펫</a></p>
            </h4>
            <table>
                <tr>
                  <th>업종 : </th>
                  <th>미용</th>
                </tr>
                <hr>
                <tr>
                  <th>주소 : </th>
                  <th>경기도 수원시</th>
                </tr>
                <tr>
                  <th>입장 : </th>
                  <th>중형,대형 </th>
                </tr>
              </table>
              <hr>
          </div>
        </div>
      </div>

      <div class="col-lg-4 col-sm-6 petCard">
        <div class="card h-80">
          <a href="#"><img class="card-img-top" src="http://blogfiles9.naver.net/MjAxNzA4MDlfMjIy/MDAxNTAyMjg0NjIwMTk3.r5_I7z0kljQ28-YxUJU_7dzAHIHzCuUR7MAmRKgner4g.c16Xutpi19uob68JQu6v2Y514RQXll6b6bN_HBYaqHAg.JPEG.yuwlsfks/IMG_0516.jpg" width="700" height="230"></a>
          <div class="card-body">
            <h4 class="card-title">
              <p class="text-center"><a href="#">6.버디펫</a></p>
            </h4>
            <table>
                <tr>
                  <th>업종 : </th>
                  <th>미용</th>
                </tr>
                <hr>
                <tr>
                  <th>주소 : </th>
                  <th>경기도 수원시</th>
                </tr>
                <tr>
                  <th>입장 : </th>
                  <th>중형,대형 </th>
                </tr>
              </table>
              <hr>
          </div>
        </div>
      </div>



      
    </div>

    <br>
      <!-- 더보기버튼 -->
      <button type="button" class="btn btn-primary btn-lg btn-block">더보기</button>
      <br>
    </div>
<%@ include file="/views/common/footer.jsp" %>