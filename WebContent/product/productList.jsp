<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 | 텀블러/보온병</title>

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
.title {
	margin: 40px auto;
}
.page-link {
	color: #222;
	font-size: 12px;
}
.btn-group {
	margin-bottom: 30px;
}
</style>
<body>
<%@ include file="../header.jsp" %>
<%
	List<Product> proList = (ArrayList<Product>) request.getAttribute("proList");
	if(sid!=null) {
		sid = sid;
	} else {
		sid = "guest";
	}
%>
<div class="container-fluid" id="content">
<h2 class="title">제품목록</h2>
	<ul class="row" id="best">
	<% for(int i=0;i<proList.size();i++) {
			Product pro = proList.get(i);
	%>
			<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
				<div class="card" style="width: 18rem;">
					<img src="<%=request.getContextPath() %>/upload/<%=pro.getProPic() %>" class="card-img-top" alt="<%=pro.getProName() %>">
					<div class="card-body">
						<h5 class="card-title"><%=pro.getProName() %></h5>
				    	<p class="card-text"><%=pro.getProSpec() %></p>
				    	<p class="card-text"><strong style="font-size: 20px;"><%=pro.getProPrice() %>원</strong>&nbsp;<span style="color: #ccc;">(<del><%=pro.getCost() %>원)</del></span></p>
				    	<a href="<%=request.getContextPath() %>/GetProductDetailCtrl?proNo=<%=pro.getProNo() %>" class="btn btn-light">제품 상세보기</a>
				  </div>
				</div>
			</li>
	<% } %>
	<% if(proList.size()==0){ %>
		<li style="width:1000px;">
			<hr>
			<p>해당 카테고리의 상품이 존재하지 않습니다.</p>
			<hr>
		</li>
	<% } %>
	</ul>
	<% if(sid.equals("admin")) { %>
		<div class="btn-group">
			<a href="<%=request.getContextPath() %>/InsertProductCategoryCtrl" class="btn btn-dark">상품 등록</a>
		</div>
	<% } %>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>