<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.jspmyboard.dao.BoardDAO, com.example.jspmyboard.vo.BoardVO" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Information</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./styleBoard/BoardStyle.css">
</head>
<body>

<%
    BoardDAO boardDAO = new BoardDAO();
    String id = request.getParameter("id");
    BoardVO user = boardDAO.getBoard(Integer.parseInt(id));
    request.setAttribute("user", user);
%>

<h1>User Information</h1>
<form id="editForm" action="editform.jsp" method="get">
    <input type="hidden" name="id" value="<%= user.getSeq() %>"/>
    <table>
        <tr>
            <td>Profile Image:</td>
            <td><img src="<%= user.getPhoto() %>" alt="Profile Image" width="100" height="100"></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><%= user.getTitle() %></td>
        </tr>
        <tr>
            <td>Title:</td>
            <td><%= user.getWriter() %></td>
        </tr>
        <tr>
            <td>MBTI:</td>
            <td><%= user.getMbti() %></td>
        </tr>
        <tr>
            <td>Content:</td>
            <td><%= user.getContent() %></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="button" value="Edit User" onclick="redirectToEditForm()"/>
                <input type="button" value="Go Back" onclick="history.back()"/>
            </td>
        </tr>
    </table>
</form>

<script>
    function redirectToEditForm() {
        document.getElementById('editForm').submit();
    }
</script>

</body>
</html>
