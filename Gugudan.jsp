<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int i;
	int j;
	String result;
%>
<%!
	void Gugudan() {
		while(i <= 24) {
			result += j + "x" + i + "=" + (j * i) + "<br>"; ++i;
		}
	}
%>
<%
	i = 1;
	j = 24;
	result = "";
%>
<%
	Gugudan();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 - 24단</title>
</head>
<body>
<h1>구구단 - 24단</h1>
<%
	for (int i = 1; i <= 24; ++i) {
		out.println("24 x " + i + " = " + (24*i) + "<br>");
	}
%>
<%=result %>

<%-- 이것은 JSP 주석입니다 --%>
</body>
</html>