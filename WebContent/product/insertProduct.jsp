<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타벅스 | 제품등록</title>

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
	ArrayList<Category> cateList = (ArrayList<Category>) request.getAttribute("cateList");
%>
<div class="content container" id="content">
	<h2 class="title">제품등록</h2>
	<form name="frm" id="frm" action="<%=request.getContextPath() %>/FileUpload" method="post" enctype="multipart/form-data">
		<table class="table">
			<tbody>
				<tr>
					<th>상품분류</th>
					<td>
						<select name="cateNo" id="cateNo" class="custom-select custom-select-md">
							<% 
								for(int i=0;i<cateList.size();i++){
									Category cate = cateList.get(i);
							%>
							<option value="<%=cate.getCateNo() %>"><%=cate.getCateName() %></option>
							<%
								}
							%>
						</select>
					</td>
				</tr>
				<tr>
					<th>제품명</th>
					<td><input type="text" name="proName" id="title" placeholder="제목" class="form-control" required /></td>
				</tr>
				<tr>
					<th>제품설명</th>
					<td><textarea cols="80" rows="6" name="proSpec" id="proSpec" class="form-control" style="resize: none;" required></textarea></td>
				</tr>
				<tr>
					<th>제품가격</th>
					<td><input type="text" name="cost" id="cost" class="form-control" required></td>
				</tr>
				<tr>
					<th>할인율</th>
					<td><input type="text" name="discountRate" id="discountRate" class="form-control" required></td>
				</tr>
				<tr>
					<th>제품 이미지1</th>
					<td><input type="file" name="proPic" id="proPic" accept="image/*" class="form-control form-pic" required></td>
				</tr>
				<tr>
					<th>제품 이미지2</th>
					<td><input type="file" name="proPic2" id="proPic2" accept="image/*" class="form-control form-pic"></td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<a href="<%=request.getContextPath() %>/GetProductListCtrl" class="btn btn-dark">목록으로</a>		
			<input type="reset" name="reset-btn" class="btn btn-light" value="취소">
			<input type="submit" name="submit-btn" class="btn btn-dark" value="제품 등록">
		</div>
	</form>	
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>