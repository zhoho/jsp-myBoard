<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.jspmyboard.dao.BoardDAO, com.example.jspmyboard.vo.BoardVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="style/BoardStyle.css">
	<style>
		input[type="text"],
		textarea,
		input[type="file"] {
			width: 100%;
			padding: 8px;
			margin-bottom: 10px;
			box-sizing: border-box;
		}

		input[type="submit"],
		input[type="button"] {
			margin-right: 10px;
		}
	</style>
</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id = request.getParameter("id");
	BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
	request.setAttribute("vo", u);

%>

<div class="container">
	<h1>Edit Form</h1>
	<form action="editpost.jsp" method="post" enctype="multipart/form-data">
		<input type="hidden" name="seq" value="<%=u.getSeq()%>"/>
		<table class="table">
			<tr>
				<td>이름:</td>
				<td><label>
					<input type="text" name="writer" value="<%= u.getWriter() %>" />
				</label></td>
			</tr>
			<tr>
				<td>학번:</td>
				<td><label>
					<input type="text" name="title" value="<%= u.getTitle() %>"/>
				</label></td>
			</tr>
			<tr>
				<td>나의 한동 MBTI:</td>
				<td><label>
					<input type="text" name="mbti" value="<%= u.getMbti() %>"/>
				</label></td>
			</tr>
			<tr>
				<td>GitHub 주소 or Blog 주소:</td>
				<td><label>
					<textarea name="content" rows="5"><%= u.getContent() %></textarea>
				</label></td>
			</tr>
			<tr>
				<td>연락처:</td>
				<td><label>
					<input type="text" name="info" value="<%= u.getInfo() %>"/>
				</label></td>
			</tr>
			<tr>
				<td><label>
				<td>Photo</td><td><input type ="file" name="photo" value="${vo.getPhoto()}"></td>
				<c:if test="${vo.getPhoto() ne ''}"><br />
					<img src="${pageContext.request.contextPath }/upload/${vo.getPhoto()}" class="photo" width=250 height=auto>
				</c:if>
				</label></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" class="btn btn-primary" value="수정하기"/>
					<a class="btn btn-danger" href="deletepost.jsp?id=<%= u.getSeq() %>">삭제하기</a>
					<a class="btn btn-secondary" href="javascript:history.back()">취소</a>
				</td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>
