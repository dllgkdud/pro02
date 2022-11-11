<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타벅스</title>
<!-- favicon -->
<link rel="shortcut icon" sizes="192*192" href="./img/favicon/favicon.png">
<link rel="apple-touch-icon" href="./img/favicon/favicon.png">
<link rel="apple-touch-icon-precomposed" href="./img/favicon/favicon.png">

<!-- metaphor -->
<meta name="title" content="스타벅스" />
<meta name="description" content="스타벅스" />

<!-- css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
/* Navigation */
.justify-content-end {
    padding: 5px 10%;
    font-size: 12px;
    border-bottom: 1px solid #eee;
}
.img-point {
    padding: 5px 10%;
    font-size: 12px;
}
.nav-link {
    color: #222;
}
.nav-link-img {
    margin-top: 3px;
    margin-left: 15px;
}
#mainNav {
    background: #1e3932;
}
.navbar-dark .navbar-nav .nav-link{
    color: #fff;
    border-bottom: 2px solid #1e3932;
}
.navbar-dark .navbar-nav .nav-link:hover {
    color: #fff;
    border-bottom: 2px solid #fff;
}
.dropdown-menu {
    padding: 1.2em 0;
    border: 1px solid #eee;
    border-radius: 0;
}
.dropdown-item:hover {
    background-color: #fff;
    color: #1e3932;
    text-decoration: underline;
    font-weight: 600;
}
.btn-main {
    background-color: transparent;
    border: none;
    color: #222;
    font-size: 12px;
    height: 32px;
    padding: 0 20px;
}
.btn-main:hover {
    background-color: transparent;
    color: #222;
}
/* MainPage */
#subNav {
    margin-top: 120px;
    margin-bottom: 40px;
    background-color: #f2f0eb;
}
.mx-center {
    margin: 0 auto;
}
.content {
    margin-top: 150px;
    margin-bottom: 50px;
    text-align: center;
}
.content-lead {
    font-size: 12px;
    color: #888;
}
.content-lead:hover {
    text-decoration: underline;
}
.card-deck {
    width: 1280px;
    margin: 20px auto;
}
.card-deck:after {
    content: "";
    clear: both;
    display: block;
}
.card-deck .card {
    float: left;
}
.card-text {
    margin-bottom: 0;
    color: #222;
}
.card a {
    text-decoration: none;
}
.card-text strong {
    font-size: 20px;
}
.text-muted {
    font-size: 12px;
    font-weight: 600;
}
.card-title {
    white-space: nowrap;
    overflow-x: hidden;
    text-overflow: ellipsis;
    font-size: 14px;
}
.card-title:hover {
    text-decoration: underline;
}
.card-content {
    margin-top: 10px;
    font-size: 12px;
}
.card-content:hover {
    text-decoration: underline;
}
.card-goods {
    margin: 0;
    font-size: 16px;
}
.card-goods t {
    font-weight: 600;
}
</style>
<body>
<%@ include file="header.jsp" %>
    <!-- Slide -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="./img/main/index/main_slide/silde1.png" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="./img/main/index/main_slide/slide2.png" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="./img/main/index/main_slide/slide3.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- Page1 -->
    <div class="page1">
        <div class="content">
            <h6 class="content-title"><strong>MD출시</strong></h6>
            <h2 class="content-title"><strong>여주자유CC</strong></h2>
            <span class="content content-lead">#스타벅스</span>&nbsp;
            <span class="content content-lead">#아웃도어</span>&nbsp;
            <span class="content content-lead">#파우치</span>&nbsp;
            <span class="content content-lead">#타월</span>&nbsp;
            <span class="content content-lead">#텀블러</span>
        </div>
        <div class="card-deck">
            <div class="card" style="width: 250px;">
                <a href=""><img src="./img/main/index/page1/goods1.jpg" class="card-img-top">
                <div class="card-body">
                    <p class="card-text"><small class="text-muted">스타벅스</small></p>
                    <a href=""><p class="card-text card-title">버디 미니 파우치</p></a>
                    <p class="card-text"><strong>78,000</strong>원</p>
                </div>
            </div>
            <div class="card" style="width: 250px;">
                <a href=""><img src="./img/main/index/page1/goods2.jpg" class="card-img-top"></a>
                <div class="card-body">
                    <p class="card-text"><small class="text-muted">스타벅스</small></p>
                    <a href=""><p class="card-text card-title">버디 멀티 파우치</p></a>
                    <p class="card-text"><strong>99,000</strong>원</p>
                </div>
            </div>
            <div class="card" style="width: 250px;">
                <a href=""><img src="./img/main/index/page1/goods3.jpg" class="card-img-top"></a>
                <div class="card-body">
                    <p class="card-text"><small class="text-muted">스타벅스</small></p>
                    <a href=""><p class="card-text card-title">버디 릴와이어 타월</p></a>
                    <p class="card-text"><strong>32,000</strong>원</p>
                </div>
            </div>
            <div class="card" style="width: 250px;">
                <a href=""><img src="./img/main/index/page1/goods4.jpg" class="card-img-top"></a>
                <div class="card-body">
                    <p class="card-text"><small class="text-muted">스타벅스</small></p>
                    <a href=""><p class="card-text card-title">SS 스탠리 베이스볼 파인트 컵 473ml</p></a>
                    <p class="card-text"><strong>19,000</strong>원</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Page2 -->
    <div class="page2">
        <div class="content">
            <h2 class="content content-title"><strong>스타벅스 스토리</strong></h2>
        </div>
        <div class="card-deck">
            <div class="card" style="width: 30%;">
                <img src="./img/main/index/page2/story1.jpg" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-text">STARBUCKS STORY</h5>
                    <p class="card-text card-content">커피 이상의 특별한 경험</p>
                </div>
            </div>
            <div class="card" style="width: 30%;">
                <img src="./img/main/index/page2/story2.jpg" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-text">환경 발자국 줄이기</h5>
                    <p class="card-text card-content">스타벅스의 환경보호 활동</p>
                </div>
            </div>
            <div class="card" style="width: 30%;">
                <img src="./img/main/index/page2/story3.jpg" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-text">풍경이 머무는 자리</h5>
                    <p class="card-text card-content">더양평 DTR</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Page3 -->
    <div class="page3">
        <nav class="navbar navbar-expand-lg navbar-dark py-lg-3" id="subNav">
            <div class="container">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-center">
                        <li class="nav-item px-lg-4">전체</li>
                        <li class="nav-item px-lg-4">e-gift</li>
                        <li class="nav-item px-lg-4">푸드</li>
                        <li class="nav-item px-lg-4">텀블러/보온병</li>
                        <li class="nav-item px-lg-4">컵/머그</li>
                        <li class="nav-item px-lg-4">라이프스타일</li>
                        <li class="nav-item px-lg-4">커피용품</li>
                        <li class="nav-item px-lg-4">커피/음료</li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="card-deck">
            <div class="card" style="width: 30%; height: auto;">
                <h5 class="card-text">01 ─</h5>
                <img src="./img/main/index/page3/top1.png" class="card-img-top">
                <div class="card-body">
                    <span class="card-content">스타벅스</span>
                    <span class="card-text card-content">[SSG머니 2%적립]스타벅스 APP전용 e카드 3만원 교환권</span>
                    <p class="card-goods"><t>78,000</t>원</p>
                </div>
            </div>
            <div class="card" style="width: 30%; height: auto;">
                <h5 class="card-text">02 ─</h5>
                <img src="./img/main/index/page3/top2.png" class="card-img-top">
                <div class="card-body">
                    <span class="card-content">스타벅스</span>
                    <span class="card-text card-content">[SSG머니 2%적립]스타벅스 APP전용 e카드 5만원 교환권</span>
                    <p class="card-goods"><t>78,000</t>원</p>
                </div>
            </div>
            <div class="card" style="width: 30%; height: auto;">
                <h5 class="card-text">03 <small>▼1</small></h5>
                <img src="./img/main/index/page3/top3.jpg" class="card-img-top">
                <div class="card-body">
                    <span class="card-content">스타벅스</span>
                    <span class="card-text card-content">SS 블랙 앤 골드 스탠리 보온병 500ml</span>
                    <p class="card-goods"><t>78,000</t>원</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
<%@ include file="footer.jsp" %>
</body>
</html>