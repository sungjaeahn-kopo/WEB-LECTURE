<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "common.jsp" %>
<%
	request.setAttribute("id", "hong");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	msg : <%= msg %> <br>
	id : ${id} <br>
	<h2>인클루드전</h2>
	<Strong>파라미터 미설정</Strong>
	<%-- <%@ include file="one.jsp" %> --%>
	<!-- 인클루드 지시자는 중간에 들어간다 -->
	<jsp:include page="one.jsp" />
	<strong>파라미터 설정</strong>
	<jsp:include page="one.jsp">
		<jsp:param name="name" value="hong gil-dong" />
		<jsp:param name="age" value="30" />
	</jsp:include>
	<h2>인클루드후</h2>
	<%-- phone : ${ phone } <br> --%>
</body>
</html>








