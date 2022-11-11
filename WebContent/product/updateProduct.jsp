<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타벅스 | 제품수정</title>

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
	Product pro = (Product) request.getAttribute("pro");
	ArrayList<Category> cateList = (ArrayList<Category>) request.getAttribute("cateList");
%>
<div class="content container" id="content">
	<h2 class="title">제품정보수정</h2>
	<form name="frm" id="frm" action="<%=request.getContextPath() %>/UpdateProductProCtrl" method="post" enctype="multipart/form-data">
		<table class="table">
			<tbody>
				<tr>
					<th>상품분류</th>
					<td>
						<p>상품코드 : <%=pro.getCateNo() %></p>
						<input type="hidden" name="cateNo" id="cateNo" value="<%=pro.getCateNo() %>">
						<select name="updateCateNo" id="updateCateNo" onchange="updateCategory()" class="custom-select custom-select-md">
							<option value="" selected>선택안함</option>
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
					<td>
						<input type="text" name="proName" id="proName" placeholder="상품명 입력" class="form-control" value="<%=pro.getProName() %>" required />
						<input type="hidden" name="proNo" id="proNo" value="<%=pro.getProNo() %>">
					</td>
				</tr>
				<tr>
					<th>제품설명</th>
					<td><textarea cols="100" rows="10" name="proSpec" id="proSpec" class="form-control" style="resize: none;" required><%=pro.getProSpec() %></textarea></td>
				</tr>
				<tr>
					<th>제품가격</th>
					<td><input type="text" name="cost" id="cost" class="form-control" value="<%=pro.getCost() %>" required></td>
				</tr>
				<tr>
					<th>할인율</th>
					<td><input type="text" name="discountRate" id="discountRate" class="form-control" value="<%=pro.getDiscountRate() %>" required></td>
				</tr>
				<tr>
					<th>제품 이미지1</th>
					<td>
						<p>
							<img src="<%=request.getContextPath() %>/upload/<%=pro.getProPic2() %>" alt="<%=pro.getProName() %>">
						</p>
						<input type="hidden" name="proPic" id="proPic" value="<%=pro.getProPic2() %>">
						<input type="file" name="updateProPic" id="updateProPic" accept="image/*" class="form-control" onchange="changeImg()" required>
					</td>
				</tr>
				<tr>
					<th>제품 이미지2</th>
					<td>
						<p><img src="<%=request.getContextPath() %>/upload/<%=pro.getProPic() %>" alt="<%=pro.getProName() %>"></p>
						<input type="hidden" name="proPic2" id="proPic2" value="<%=pro.getProPic() %>">
						<input type="file" name="updateProPic2" id="updateProPic2" accept="image/*" onchange="changeImg2()" class="form-control">
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<input type="reset" name="reset-btn" class="btn btn-light" value="취소">		
			<input type="submit" name="submit-btn" class="btn btn-dark" value="제품정보변경">
			<a href="<%=request.getContextPath() %>/GetProductListCtrl" class="btn btn-dark">목록으로</a>
		</div>
	</form>	
	<script>
	function updateCategory() {
		var cateNo = document.frm.updateCateNo.value;
		document.frm.cateNo.value = cateNo;
	}
	</script>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>