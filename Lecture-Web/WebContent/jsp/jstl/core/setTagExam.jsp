<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	1값을 가지는 변수 cnt를 공유영역에 등록(page)<br>
	<c:set var="cnt" value="1" />
	
	공유영역에 등록된 변수 cnt 출력<br>
	cnt : ${ cnt }<br>
	
	cnt변수에 1을 더한 후 cnt값을 출력<br>
	<c:set var="cnt" value="${ cnt + 1 }" scope="request" />
	
	cnt : ${ cnt }<br>
	request cnt : ${ requestScope.cnt }<br>
</body>
</html>
<%--
	------------------------------------------------------------------
		JSP공유영역			EL공유영역				JSTL공유영역		
	------------------------------------------------------------------
		pageContex			pageScope			page
		request				requestScope		request
		session				sessionScope		session
		application			applicationScope	application
	------------------------------------------------------------------
		
 --%>


















