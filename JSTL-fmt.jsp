<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL-fmt</title>
</head>
<body>
<h1>JSTL-fmt</h1>
<h2>formatNumber - 숫자 컴마단위로 출력/형식 지정 후 출력</h2>
<p><fmt:formatNumber value="12345.67890" /> </p>
<p><fmt:formatNumber value="0.5" type="percent" /> </p>
<p><fmt:formatNumber value="123.456" pattern="00000.0" /> </p>
<p><fmt:formatNumber value="1000000" type="currency" /> </p>
<p><fmt:formatNumber value="1000000" type="currency" currencySymbol="$" /> </p>

<h2>formatDate - 날짜를 형식 지정 후 출력</h2>
<c:set var="today" value="<%=new Date() %>" />
<p>${today}</p>

<p><fmt:formatDate value="${today}" type="date"/></p>
<p><fmt:formatDate value="${today}" type="time"/></p>
<p><fmt:formatDate value="${today}" type="both"/></p>

<p><fmt:formatDate value="${today}" type="both" dateStyle="short" timeStyle="short" /></p>
<p><fmt:formatDate value="${today}" type="both" dateStyle="medium" timeStyle="medium" /></p>
<p><fmt:formatDate value="${today}" type="both" dateStyle="long" timeStyle="long" /></p>
<p><fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full" /></p>


<p><fmt:formatDate value="${today}" type="both" pattern="yyyy-MM-dd" /></p>
<p><fmt:formatDate value="${today}" type="both" pattern="HH:mm:ss" /></p>

<h2>parseNumber - 문자형식을 숫자로 변환</h2>
<c:set var="num">12345.6789</c:set>
<p><fmt:parseNumber type="number" value="${num}" /></p>
<p><fmt:parseNumber type="number" value="${num}" integerOnly="true" /></p>

<h2>requestEncoding - 클라이언트의 요청처리시 문자인코딩 지정</h2>
<fmt:requestEncoding value="UTF-8" />

<h2>setBundle, message - 키와 값으로 구성된 리소스번들 파일 다루기</h2>
<!-- 지정된 경로 : src/패키지명/bundle.properties -->
<fmt:setBundle basename="jaemukyang.bundle" />
<p><fmt:message key="msg" /></p>
<p><fmt:message key="lang" /></p>
<hr>
<fmt:message key="msg" var="msg" />
<fmt:message key="lang" var="lang" />
<p>${msg}</p>
<p>${lang}</p>


</body>
</html>