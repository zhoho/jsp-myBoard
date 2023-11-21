<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="u" class="com.example.jspmyboard.vo.BoardVO" />
<%@page import="com.example.jspmyboard.dao.BoardDAO"%>
<%@ page import="com.example.jspmyboard.vo.BoardVO" %>
<%@ page import="com.example.jspmyboard.util.FileUpload" %>


<% request.setCharacterEncoding("utf-8"); %>
<jsp:setProperty property="*" name="u"/>

<%
	BoardDAO boardDAO = new BoardDAO();
	FileUpload upload = new FileUpload();
	BoardVO uu = upload.uploadPhoto(request);
	int i = boardDAO.updateBoard(uu);
	response.sendRedirect("posts.jsp");
%>