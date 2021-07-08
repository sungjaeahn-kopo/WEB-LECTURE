package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
// http://localhost:9999/Lecture-Web/servlet/table?row=4&col=3 요청시
	
	-------------------------------------------------
	| cell(0,0)	| cell(0,1)	| cell(0,2)	| cell(0,3)	|
	-------------------------------------------------
	| cell(1,0)	| cell(1,1)	| cell(1,2)	| cell(1,3)	|
	-------------------------------------------------
	| cell(2,0)	| cell(2,1)	| cell(2,2)	| cell(2,3)	|
	-------------------------------------------------
	| cell(3,0)	| cell(3,1)	| cell(3,2)	| cell(3,3)	|
	-------------------------------------------------

// http://localhost:9999/Lecture-Web/servlet/table 요청시
	5 X 5 테이블 생성
	
// http://localhost:9999/Lecture-Web/servlet/table?row=2 요청시
  	2 X 5 테이블 생성
*/

@WebServlet("/servlet/tableExam")
public class TableServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  String row = request.getParameter("row");
		  String col = request.getParameter("col");
				  
		  		if(row == null) {
		  			row = "1";
		  			col = row;
		  		} else if(col == null) {
		  			col = row;
		  		} 
		  			int rowI = Integer.parseInt(row); int colI = Integer.parseInt(col);
		  			
		  			response.setContentType("text/html; charset:utf-8"); PrintWriter out =
		  					response.getWriter();
		  			
		  			out.println("<table border='1'>"); for (int i = 0; i < rowI; i++) {
	  				out.println("<tr>"); for (int j = 0; j < colI; j++) { out.println("<td>");
	  				out.println("cell(" + i + "," + j + ")"); out.println("</td>"); }
	  				out.println("</tr>"); } out.println("</table>");
		  				
	  				out.flush();
	  				out.close();
		  		
		  		
		  		
		  		  
	}
}
