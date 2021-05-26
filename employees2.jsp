<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="url">jdbc:mariadb://bigdata.cgeutq0tfbai.ap-northeast-2.rds.amazonaws.com:3306/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>

<fmt:requestEncoding value="UTF-8"/>

<sql:setDataSource var="mariadb" 
url="${url}" driver="${drv}" user="${usr}" password="${pwd}"/>

<sql:query dataSource="${mariadb}" var="rs">
	select EMPLOYEE_ID, LAST_NAME, JOB_ID, MANAGER_ID, DEPARTMENT_ID
	 from EMPLOYEES order by EMPLOYEE_ID
</sql:query>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록된 사원 조회</title>
</head>
<body>
<h1>등록된 사원 조회</h1>
<c:forEach var="row" items="${rs.rows}">
	<p>${row.EMPLOYEE_ID} ${row.LAST_NAME} ${row.JOB_ID} ${row.MANAGER_ID} ${row.DEPARTMENT_ID} </p>
	<hr>
</c:forEach>
</body>
</html>