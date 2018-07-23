<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/views/common/header.jsp" %>
<link href="css/modern-business.css" rel="stylesheet">
  <!-- Page Heading/Breadcrumbs -->
    <div class="container">
      <h1 class="mt-4 ml-4">자랑하기</h1>
    </div>

      <nav class="navbar navbar-expand-sm navbar-light bg-Secondary">
          <div class="container">
           <!-- Toggler/collapsibe Button -->
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
          </button>
        <!-- Navbar links -->
          <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
              
                <li class="nav-item">
                  <a class="nav-link" href="#">추천순</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">댓글순</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">최신순</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">조회순</a>
                </li>
              </ul>
              <!-- <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                More
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="#">Company</a>
                <a class="dropdown-item" href="#">Latest </a>
                <a class="dropdown-item" href="#">Popular </a>
                <a class="dropdown-item" href="#">Upcoming </a>
                <a class="dropdown-item" href="#">Offers </a>
              </div>
            </li> -->
              
            
              
          <form class="form-inline ml-auto" action="#">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-success" type="submit"><i class="fa fa-search"></i> Search</button>
          </form>
            
          </div>
         </div>
        </nav>

      <!-- Page Content -->
      <div class="container">
        <div class="col-md-offset-3 p-0">
        
        <!-- Project One -->
        <div class="row mx-5">
          <div class="col-sm-4">
            <a href="#">
              <img class="img-fluid rounded my-3 mb-md-0" src="images/dog-280332_640.jpg" alt=""/>
            </a>
          </div>
          <div class="col-md-5">
            <h4>너무 귀엽죠~^o^</h4>
            <p>프렌치불독을 키운 지는 7년이 됐고, 본격적으로 브리딩을 한 것은 2014년부터입니다. 원래는 그레이트피레니즈 3마리로 도그쇼에도 참가했었는데요. 도그쇼에서 워킹하는 프렌치불독을 보고 매력에 흠뻑 빠졌어요.

              표현이 정말 재밌고, 귀엽고, 더 알고싶은 계기가 돼서.....
              <a href="#">계속 읽기</a>
            </p>
            <!-- <a class="btn" href="#">더 읽어보기>>
              <span class="glyphicon glyphicon-chevron-right"></span>
            </a> -->
          </div>
        </div>
            
        <!-- /.row -->

        <hr>

        <!-- Project Two -->
        <div class="row mx-5">
          <div class="col-sm-4">
            <a href="#">
              <img class="img-fluid rounded my-3 mb-md-0"  src="<%=request.getContextPath()%>/images/dog-1246610_640.jpg" alt="">
            </a>
          </div>
          <div class="col-md-5 align-items-center">
            <h4>너무 귀엽죠~^o^</h4>
            <p>프렌치불독을 키운 지는 7년이 됐고, 본격적으로 브리딩을 한 것은 2014년부터입니다. 원래는 그레이트피레니즈 3마리로 도그쇼에도 참가했었는데요. 도그쇼에서 워킹하는 프렌치불독을 보고 매력에 흠뻑 빠졌어요.

              표현이 정말 재밌고, 귀엽고, 더 알고싶은 계기가 돼서.....
              <a href="#">계속 읽기</a>
            </p>
            <!-- <a class="btn" href="#">더 읽어보기>>
              <span class="glyphicon glyphicon-chevron-right"></span>
            </a> -->
          </div>
        </div>
        <!-- /.row -->
      
        <hr>

        <!-- Project Three -->
        <div class="row mx-5">
          <div class="col-sm-4">
            <a href="#">
              <img class="img-fluid rounded my-3 mb-md-0" src="images/beach-1790049_640.jpg" alt="">
            </a>
          </div>
          <div class="col-md-5">
            <h4>너무 귀엽죠~^o^</h4>
            <p>프렌치불독을 키운 지는 7년이 됐고, 본격적으로 브리딩을 한 것은 2014년부터입니다. 원래는 그레이트피레니즈 3마리로 도그쇼에도 참가했었는데요. 도그쇼에서 워킹하는 프렌치불독을 보고 매력에 흠뻑 빠졌어요.

              표현이 정말 재밌고, 귀엽고, 더 알고싶은 계기가 돼서.....
              <a href="#">계속 읽기</a>
            </p>
            <!-- <a class="btn" href="#">더 읽어보기>>
              <span class="glyphicon glyphicon-chevron-right"></span>
            </a> -->
          </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Project Four -->
        <div class="row mx-5">

          <div class="col-sm-4">
            <a href="#">
              <img class="img-fluid rounded mt-2 mb-3 mb-md-0" src="images/pug-690566_640.jpg" alt="">
            </a>
          </div>
          <div class="col-md-5">
            <h4>너무 귀엽죠~^^</h4>
            <p>프렌치불독을 키운 지는 7년이 됐고, 본격적으로 브리딩을 한 것은 2014년부터입니다. 원래는 그레이트피레니즈 3마리로 도그쇼에도 참가했었는데요. 도그쇼에서 워킹하는 프렌치불독을 보고 매력에 흠뻑 빠졌어요.

              표현이 정말 재밌고, 귀엽고, 더 알고싶은 계기가 돼서.....
              <a href="#">계속 읽기</a>
            </p>
            <!-- <a class="btn" href="#">더 읽어보기>>
              <span class="glyphicon glyphicon-chevron-right"></span>
            </a> -->
          </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Pagination -->
        <ul class="pagination justify-content-center">
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
              <span class="sr-only">Previous</span>
            </a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">1</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">2</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">3</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
              <span class="sr-only">Next</span>
            </a>
          </li>
        </ul>

        </div>
      </div>
      <!-- /.container -->
      
<%@ include file="/views/common/footer.jsp" %>