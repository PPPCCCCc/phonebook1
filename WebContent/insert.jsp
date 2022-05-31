<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%
	//파라미터에서 값 꺼내오기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	//Person 객체만들기
	PersonVo personVo = new PersonVo(name, hp, company);
	System.out.println(personVo);
	
	
	//PhoneDao 객체만들기
	PhoneDao phoneDao = new PhoneDao();
	
	//PhoneDao의 personInsert()를 이용해서 저장하기
	int count = phoneDao.personInsert(personVo);
	System.out.println(count);
	
	
	//응답은 리스트로 리다이렉트 시킨다.
	//list.jsp 로 다시 요청한다.
	response.sendRedirect("./list.jsp");
		
%>

