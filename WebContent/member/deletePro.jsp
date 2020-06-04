<%@page import="member.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="setting.jsp" %>
<script src="<%=project%>script.js"></script>

	<h2> <%=page_delete%> </h2>
	<%
		int resultCheck = (Integer) request.getAttribute( "resultCheck" );
	%>
	
	<!-- 출력  -->
	<%
		if( resultCheck == 1 ) {
			// 비밀번호가 같다
			int result = (Integer) request.getAttribute( "result" ); 
			if( result == 0 ) {
				// 탈퇴 실패
				%>
				<script type="text/javascript">
					<!--
					alert( deleteerror );
					//-->
				</script>
				<meta http-equiv="refresh" content="0; url='main.do'">
				<%
			} else {
				// 탈퇴 성공
				session.removeAttribute( "memId" );
				response.sendRedirect( "main.do" );
			}		
		} else {
			// 비밀번호가 다르다
			%>
			<script type="text/javascript">
				<!--
				erroralert( passwdcheckerror );
				//-->
			</script>
			<%
		}
	%>
