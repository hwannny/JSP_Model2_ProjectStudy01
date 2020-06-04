<%@page import="member.LogonDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp" %>
<script src="<%=project%>script.js"></script>

	<%
		int result = (Integer)request.getAttribute("result");
	%>
	
	<!-- 출력 -->
	<h2> <%=page_input%> </h2>
	<%
		if( result == 0 ) {
			%>
			<script type="text/javascript">
				<!--
				erroralert( inputerror );
				//-->
			</script>
			<%
		} else {
			response.sendRedirect( "loginForm.do" );
		}
	%>


























