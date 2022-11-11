<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
%>    
<style>
ul, ul li { 
	list-style:none; 
}
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
</style>
<!-- Navigation -->   
<header>
	<div class="site-heading text-right text-faded d-none d-lg-block">
		<ul class="nav justify-content-end">
        <!-- Page Login -->
		<% if(sid!=null) { %>
			<li class="nav-item">
				<span class="nav-link"><%=sname %>님</span>
			</li>
			<li class="nav-item">
				<a class="nav-link active" href="<%=request.getContextPath() %>/LogOutCtrl">로그아웃</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath() %>/GetCustomInfoCtrl">회원정보</a>
			</li>
	  	<% if(sid.equals("admin")) { %>
	  		<li class="nav-item">
		    	<a class="nav-link" href="<%=request.getContextPath() %>/admin/index.jsp">관리자페이지</a>
			</li>
		<% } else { %>
			<li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath() %>/GetMemberSalesInfoCtrl">구매내역</a>
			</li>
			<li class="nav-item">
		    	<a class="nav-link" href="<%=request.getContextPath() %>/GetMemberCartListCtrl">장바구니</a>
		  	</li>
	  	<% } %>
		<% } else { %>
		<!-- Modal Login -->
             <li class="nav-item">
                 <button type="button" class="btn-main btn-primary" data-toggle="modal" data-target="#exampleModal">로그인</button> 
                 <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                     <div class="modal-dialog">
	                     <div class="modal-content">
	                         <div class="modal-header">
	                         <h5 class="modal-title" id="exampleModalLabel">로그인</h5>
	                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                             <span aria-hidden="true">&times;</span>
	                         </button>
	                         </div>
	                         <div class="modal-body">
	                             <div class="container" id="content">
	                                 <form name="frm" id="frm" action="" method="post">
	                                     <table class="table">
	                                         <tbody>
	                                             <tr>
	                                                 <td><input type="text" name="cusId" id="cusId" class="form-control" placeholder="아이디" required /></td>
	                                             </tr>
	                                             <tr>
	                                                 <td><input type="password" name="cusPw" id="cusPw" class="form-control" placeholder="비밀번호" required /></td>
	                                             </tr>
	                                         </tbody>
	                                     </table>
	                                     <div class="btn-group">
	                                         <input type="reset" name="reset-btn" class="btn btn-light" value="취소">
	                                         <input type="submit" name="submit-btn" class="btn btn-dark" value="로그인">
	                                     </div>
	                                 </form>
	                             </div>
	                         </div>
	                     </div>
                     </div>
                 </div>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="<%=request.getContextPath() %>/custom/login.jsp">로그인</a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="<%=request.getContextPath() %>/custom/membership.jsp">회원가입</a>
             </li>
             <li class="nav-item">
                 <a class="nav-link" href="#">기타</a>
             </li>
		<% } %>
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
<nav class="navbar navbar-expand-lg navbar-dark py-lg-2" id="mainNav">
    <div class="container">
        <a class="navbar-brand fw-bold d-lg-none" href="index.jsp">STARBUCKS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-left">
                <li class="nav-item dropdown px-lg-4">
                    <a class="nav-link dropdown" href="#" role="button" data-toggle="dropdown" aria-expanded="false">키친/테이블</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=1">텀블러/보온병</a>
                        <a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=2">컵/머그</a>
                    </div>
                </li>
                <li class="nav-item dropdown px-lg-4">
                    <a class="nav-link dropdown" href="#" role="button" data-toggle="dropdown" aria-expanded="false">커피/티용품</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=3">에스프레소</a>
                        <a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=4">콜드브루</a>
                    </div>
                </li>
                <li class="nav-item dropdown px-lg-4">
                    <a class="nav-link dropdown" href="#" role="button" data-toggle="dropdown" aria-expanded="false">푸드</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=5">베이커리</a>
                        <a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=6">샌드위치</a>
                    </div>
                </li>
                <li class="nav-item dropdown px-lg-4">
                    <a class="nav-link dropdown" href="#" role="button" data-toggle="dropdown" aria-expanded="false">고객센터</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="<%=request.getContextPath() %>/GetBoardListCtrl">공지사항</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>