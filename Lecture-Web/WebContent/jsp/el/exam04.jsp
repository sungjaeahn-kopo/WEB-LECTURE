<%@page import="kr.ac.kopo.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardVO board = new BoardVO();
	board.setNo(1);
	board.setTitle("test");
	
	// pageContext 영역등록 => 이름 : boardVO, 값 : 생성된 BoardVO 객체
	pageContext.setAttribute("boardVO", board);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	no : <%= board.getNo() %> <br>
	no : <%= ((BoardVO)pageContext.getAttribute("boardVO")).getNo() %> <br>
	title : <%= board.getTitle() %> <br>
	title : <%= ((BoardVO)pageContext.getAttribute("boardVO")).getTitle() %> <br>
	
	el no : ${ boardVO.no }<br>
	el title : ${ boardVO.title }<br>
	<%--
		el aaa : ${ boardVO.aaa }<br> 
		자바빈즈 클래스에서는 .이 getter, setter를 의미하므로 getaaa를 의미 (500error)
	 --%>
</body>
</html>