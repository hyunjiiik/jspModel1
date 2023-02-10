<%@page import="dto.MemberDto"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body>

<%

	String id = request.getParameter("id");		// 아이디 가져오기
	String pwd = request.getParameter("pwd");	// 비번 가져오기
	
	MemberDao dao = MemberDao.getInstacne();	// 멤버다오 싱글턴으로(하나) 끌어오기
	
	MemberDto mem = dao.login(id, pwd);
	
	
	if(mem != null) {		// null이 아닐때 = 아이디 찾았고 정보 매칭됨. 로그인이 제대로 되었다. 
		// 로그인 회원정보	
		// request.getSession();	
	
		session.setAttribute("login", mem);
		session.setMaxInactiveInterval(60*60*2);  		// session의 유효기간
		
		
		%>
		<script type="text/javascript">
		alert(" 환영합니다. <%=mem.getId() %>님");
		location.href = ""
		
		</script>
		<%
	} else{
		%>
		<script type="text/javascript">
		alert("아이디나 패스워드를 확인하십시오");
		location.href = "login.jsp"

		</script>
		<% 
	}
	%>	
	





