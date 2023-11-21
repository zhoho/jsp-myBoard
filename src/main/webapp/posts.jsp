<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.jspmyboard.dao.BoardDAO, com.example.jspmyboard.vo.BoardVO, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="handongBTI/js/start.js"></script>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Image Grid</title>
	<!-- Add Bootstrap CSS link -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./styleBoard/BoardStyle.css">
	<style>
		body {
			padding: 20px;
		}

		.image-grid {
			display: grid;
			grid-template-columns: repeat(4, 1fr);
			gap: 16px;
			margin-top: 20px;
		}

		.image-item {
			text-align: center;
			margin-bottom: 20px; /* Add margin to provide space between items */
		}

		.image-item img {
			width: 100%;
			height: auto;
			border: 1px solid #ddd;
			border-radius: 5px;
		}

		.image-item p {
			color: black;
		}
	</style>
</head>
<body>
<div class="container">
	<h1 class="mt-4">Image Grid</h1>

	<div class="mb-3">
		<a href="addpostform.jsp" class="btn btn-primary">Add New Post</a>
	</div>

	<div class="image-grid">
		<%
			BoardDAO boardDAO = new BoardDAO();
			List<BoardVO> list = boardDAO.getBoardList();
			request.setAttribute("list", list);
		%>

		<c:forEach items="${list}" var="u" varStatus="loop">
			<div class="image-item">
				<a href="view.jsp?id=${u.seq}" class="edit-link">
					<img src="<%= request.getContextPath() %>/upload/<c:out value="${u.photo}"/>" alt="Image ${loop.index + 1}">
					<p>${u.title}</p>
				</a>
			</div>
		</c:forEach>
	</div>
	<nav aria-label="Page navigation">
	</nav>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
