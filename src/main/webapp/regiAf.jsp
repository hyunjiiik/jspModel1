<%@page import="dto.MemberDto"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("utf-8");		//db에 한글 넣을때 사용. 

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	//	회원가입을 시킬 back-end 필요.
	MemberDao dao = MemberDao.getInstacne();
	
	MemberDto dto = new MemberDto(id, pwd, name, email, 0);
	boolean isS = dao.addMember(dto);
	if(isS == true) {
		%> 
			<script type="text/javascript">
			alert("성공적으로 가입되었습니다");
			location.href = "login.jsp"
			</script>
		<% 
	} else {
		%>
			<script type="text/javascript">	
			alert("다시 기입해 주십시오. ");
			location.href = "regi.jsp";
			</script>
		<% 		
	}
	%>	
		
		 
	
	
  

<script type="text/javascript">

</script>

