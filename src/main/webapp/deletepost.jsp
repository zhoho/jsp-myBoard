<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.jspmyboard.dao.BoardDAO, com.example.jspmyboard.vo.BoardVO"%>
<%@ page import="java.util.Objects" %>
<%@ page import="com.example.jspmyboard.util.FileUpload" %>
<%
	String sid = request.getParameter("id");
	if (!Objects.equals(sid, "")){
		int id = Integer.parseInt(sid);
		BoardDAO boardDAO = new BoardDAO();
		String filename = boardDAO.getPhotoFilename(id);
		if(filename != null) {
			FileUpload.deleteFile(request, filename);
		}
		boardDAO.deleteBoard(id);
	}
	response.sendRedirect("posts.jsp");
%>