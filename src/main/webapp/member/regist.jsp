<%@page import="member.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nickname = request.getParameter("nickname");
	
	if(id ==null || pw ==null || nickname ==null){
		response.sendRedirect("registPage.jsp");		
	}else{
		MemberService service = new MemberService(new MemberDAO());
		Member member = new Member(id,pw,nickname);
		
		if(service.regist(member)){
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("registPage.jsp");
		}
	}
%>  
