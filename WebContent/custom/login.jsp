<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타벅스 | 로그인</title>

<!-- favicon -->
<link rel="shortcut icon" sizes="192*192" href="<%=request.getContextPath() %>/img/favicon/favicon.png">
<link rel="apple-touch-icon" href="<%=request.getContextPath() %>/img/favicon/favicon.png">
<link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath() %>/img/favicon/favicon.png">

<!-- metaphor -->
<title class="notranslate">스타벅스</title>
<link rel="image_src" href="//sui.ssgcdn.com/ui/common/img/sns/mnstarbucks.png"/>
<meta name="title" content="스타벅스" />
<meta name="description" content="스타벅스" />
<meta name="google-site-verification" content="riDJ-IX46HanskLx25pj6-y8ANf2qTgZNfv_UJvkHq8" />

<!-- css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
.content {
	margin: 30px auto;
}
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
</style>
<body>
<!-- Navigation -->
<header>
	<div class="site-heading text-right text-faded d-none d-lg-block">
		<ul class="nav justify-content-end">
			<li class="nav-item">
                 <a class="nav-link" href="<%=request.getContextPath() %>/custom/login.jsp">로그인</a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="<%=request.getContextPath() %>/custom/membership.jsp">회원가입</a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="#">기타</a>
             </li>
	        <div class="col-md-1"></div>
			<li class="nav-items">
			    <a href="memberInfo.jsp"><img src="<%=request.getContextPath() %>/img/header/h1.png" class="nav-link-img" style="width: 28px; height: 28px;"></a>
			</li>
			<li class="nav-item">
			    <a href="parsel.jsp"><img src="<%=request.getContextPath() %>/img/header/h2.png" class="nav-link-img" style="width: 28px; height: 28px;"></a>
			</li>
			<li class="nav-item">
			    <a href="cart.jsp"><img src="<%=request.getContextPath() %>/img/header/h3.png" class="nav-link-img" style="width: 28px; height: 28px;"></a>
			</li>
		</ul>
    </div>
    <h2 class="site-heading text-left text-faded d-none d-lg-block">
        <img src="<%=request.getContextPath() %>/img/header/logo_main.png" class="site-heading img-point">
    </h2>
</header>
<!-- Login -->
<div class="content container" id="content">
    <form name="frm" id="frm" action="<%=request.getContextPath() %>/CustomLoginCtrl" method="post">
        <table class="table">
            <tbody>
                <tr>
                    <th>아이디</th>
                    <td><input type="text" name="cusId" id="cusId" class="form-control" placeholder="아이디 입력" required /></td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td><input type="password" name="cusPw" id="cusPw" class="form-control" placeholder="비밀번호 입력" required /></td>
                </tr>
            </tbody>
        </table>
        <div class="btn-group">
            <input type="reset" name="reset-btn" class="btn btn-light" value="취소">
            <input type="submit" name="submit-btn" class="btn btn-dark" value="로그인">
        </div>
    </form>
</div>
</body>
</html>