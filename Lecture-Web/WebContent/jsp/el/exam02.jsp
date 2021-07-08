<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		http://localhost:9999/Lecture-Web/jsp/el/exam02.jsp?id=aaa&name=bbb 요청했을 때의 id값 추출
	 --%>
	<%
		String id = request.getParameter("id");
		String[] hobbies = request.getParameterValues("hobby");
		if( hobbies == null) {
			hobbies = new String[]{"파라미터 없음"};
		}
	%>

	id : <%= id %><br>
	id : <%= request.getParameter("id") %><br>
	el id : ${ param.id }<br>

	name : <%= request.getParameter("name") %><br>
	el name : ${ param.name } <br>

	<%--
		http://localhost:9999/Lecture-Web/jsp/el/exam02.jsp?id=aaa&name=bbb&hobby=music&hobby=movie
			 요청했을 때의 id, name, hobby값 추출
	 --%>
	
	
	hobby : <%= hobbies[0] %><br>
	el hobby : ${ paramValues.hobby[0] }<br>


</body>
</html>