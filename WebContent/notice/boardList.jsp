<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타벅스 | 공지사항</title>

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
.pagination {
	margin: 30px auto;
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
	List<Notice> notList = (ArrayList<Notice>) request.getAttribute("notList");
%>
<div class="content container">
	<h2 class="title">공지사항 목록</h2>
	<table class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
		<% for(int i=0; i<notList.size(); i++){
			Notice vo = notList.get(i);
		%>
			<tr>
				<td><%=vo.getNotNo() %></td>
				<td><a href="GetBoardDetailCtrl?notNo=<%=vo.getNotNo() %>"><%=vo.getTitle() %></a></td>
				<td><%=vo.getResDate() %></td>
			</tr>
		<%
			}
		%>
		</tbody>
	</table>
	<nav aria-label="Page navigation example">
	  <ul class="pagination justify-content-center">
	    <li class="page-item"><a class="page-link" href="#">1</a></li>
	    <li class="page-item"><a class="page-link" href="#">2</a></li>
	    <li class="page-item"><a class="page-link" href="#">3</a></li>
	    <li class="page-item"><a class="page-link" href="#">4</a></li>
	    <li class="page-item"><a class="page-link" href="#">5</a></li>
	    <li class="page-item"><a class="page-link" href="#">6</a></li>
	    <li class="page-item">
	      <a class="page-link" href="#">></a>
	    </li>
	  </ul>
	</nav>
	<% if(sid!=null && sid.equals("admin")) { %>
	<div class="btn-group">
		<a href="./notice/insertBoard.jsp" class="btn btn-dark">글 등록</a>
	</div>
	<% } %>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>