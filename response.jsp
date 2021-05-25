<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 아이디 : abc123, 비밀번호 : 987xyz
	// 아이디/비번 일치 => loginOk.jsp 로 redirect
	// 아이디/비번 불일치 => loginFail.jsp 로 redirect
	
	String userid = request.getParameter("userid");
	String passwd = request.getParameter("passwd");
	
	if (userid.equals("abc123") && passwd.equals("987xyz")) {
		response.sendRedirect("loginOk.jsp");
	} else {
		response.sendRedirect("loginFail.jsp");
	}

%>
