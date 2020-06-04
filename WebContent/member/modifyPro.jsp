<%@page import="member.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp" %>
<script src="<%=project%>script.js"></script>

<h2> <%=page_modify%> </h2>

	<%
	int result =(Integer)request.getAttribute("result");
	%>
	
	<%
	if( result == 0 ) {
		// 수정 실패
		%>
		<script type="text/javascript">
			<!--
			alert( updateerror );
			//-->
		</script>
		<meta http-equiv="refresh" content="0; url='main.do'">
		<%
	} else {
		// 수정 성공
		response.sendRedirect( "main.do" );
	}
	%>
















