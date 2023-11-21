<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.jspmyboard.dao.BoardDAO, com.example.jspmyboard.vo.BoardVO" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./styleBoard/BoardStyle.css">
</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id = request.getParameter("id");
	BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post">
	<input type="hidden" name="seq" value="<%= u.getSeq() %>"/>
	<table>
		<tr>
			<td>Title:</td>
			<td><label>
				<input type="text" name="title" value="<%= u.getTitle() %>"/>
			</label></td>
		</tr>
		<tr>
			<td>Writer:</td>
			<td><label>
				<input type="text" name="writer" value="<%= u.getWriter() %>" />
			</label></td>
		</tr>
		<tr>
			<td>Content:</td>
			<td><label>
				<textarea cols="50" rows="5" name="content"><%= u.getContent() %></textarea>
			</label></td>
		</tr>
		<tr>
			<td>Profile Image URL:</td>
			<td><label>
				<input type="file" name="photo" value="<%= u.getPhoto() %>"/>
			</label></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="Edit Post"/>
				<input type="button" value="Cancel" onclick="history.back()"/>
			</td>
		</tr>
	</table>
</form>

</body>
</html>
