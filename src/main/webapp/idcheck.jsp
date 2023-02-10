<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	System.out.println("id : " + id);


	MemberDao dao = MemberDao.getInstacne();
	
	boolean b = dao.getId(id);
	
	if(b == true) {	// id있음 - 사용불가
		out.println("No");
	} else {
		out.println("yes"); // id없음 - 사용불가
	}
%>