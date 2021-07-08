<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String[] names = {"홍길동", "강길동", "윤길동", "박길동"};

	pageContext.setAttribute("names", names);
	pageContext.setAttribute("namesLength", names.length);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		foreach가 자바 코드 names를 볼 수 없으므로 공유영역으로 접근해야한다니까
	 --%>
	<%-- <c:forEach items="${ names }" var="name">
		${ name }
	</c:forEach> --%>
	
	<%--
		돌고 있는 횟수가 궁금할 땐~ set 태그를 써
		마지막에 cnt 제거
	 --%>
	 <%--
	 	반복문을 돌면서 현재 어떤 상태에 있는지 varstatus
	 	이를 기억하는 !객!체!가 필요하다
	 	loop라는 객체가 map처럼 움직인다
	 	key, value 쌍으로 돌아다님
	 	
	  --%>
	 
	 first:index:count:last<br>
	 <c:forEach items="${ names }" var="name" varStatus="loop">
	 	${ loop.first } : ${ loop.index } : ${ loop.count } : ${ loop.last }
	 	<%-- 내가 대체 몇번째 인덱스에 접근하고 있어? index(0~)
	 			count(1~)
	 	 --%>
	 	${ loop.count }<br>
	 </c:forEach>
	 <hr>
	 <c:forEach items="${ names }" var="name" varStatus="loop">
	 	${ name }
	 	<c:if test="${ not loop.last }">
	 	,
	 	</c:if>
	 </c:forEach>
	 <hr>
	 <c:forEach items="${ names }" var="name" varStatus="loop">
	 	<%-- <c:if test="${loop.index ne 0 }"> --%>
	 	<%-- <c:if test="${ loop.index ne 0 }"> --%>
	 	<c:if test="${ not loop.first }">
	 	,
	 	</c:if>
	 	${ name }
	 </c:forEach>
	 <hr>
	<c:set var="cnt" value="0" />
	<c:forEach items="${ names }" var="name">
		<c:if test="${ cnt != 0 }">
		,
		</c:if>
		${ name }
		<c:set var="cnt" value="${ cnt+1 }" />
	</c:forEach>
	<c:remove var="cnt" scope="page" />
	
	<hr>
	<c:forEach begin="0" end="${ namesLength-1 }" var="i">
		<c:if test="${ i ne 0 }">
		,
		</c:if>
		${ names[i] }	
	</c:forEach>
	<hr>
	<h2>1 ~ 10 사이의 정수 출력</h2>
	<%--
		공유영역에 객체 i가 올라간거야
		i의 라이프 사이클은 forEach 내부에서만 돌아
	 --%>
	<c:forEach begin="1" end="10" var="i">
		${ i }<br>
	</c:forEach>
	년도선택 : 
	<select>
		<c:forEach begin="1940" end="2021" var="year" step="5">
			<option>${ year }</option>
		</c:forEach>
	</select>
</body>
</html>