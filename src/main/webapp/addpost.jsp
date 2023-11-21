<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.jspmyboard.dao.BoardDAO"%>
<%@ page import="com.example.jspmyboard.util.FileUpload" %>
<%@ page import="com.example.jspmyboard.vo.BoardVO" %>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>



<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.example.jspmyboard.vo.BoardVO" />

<%
	BoardDAO boardDAO = new BoardDAO();
	FileUpload upload = new FileUpload();
	BoardVO uu = upload.uploadPhoto(request);

	int i = boardDAO.insertBoard(uu);
	String msg = "데이터 추가 성공 !";
	if(i == 0) msg = "[에러] 데이터 추가 ";
%>

<script>
	alert('<%=msg%>');
	location.href='posts.jsp';
</script>