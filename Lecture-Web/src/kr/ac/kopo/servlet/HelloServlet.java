package kr.ac.kopo.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		System.out.println("init() : 최초 한번만 실행되는 메소드입니다");
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		System.out.println("service() : 실제 작업이 실행되는 메소드입니다");
		System.out.println("사용자의 요청때마다 호출되는 메소드입니다");
		
		
	}
	
}
