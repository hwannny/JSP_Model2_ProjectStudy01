<%@page import="member.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="setting.jsp" %>
<script src="<%=project%>script.js"></script>

	<%
	int result = (Integer)request.getAttribute("result");
	String id = (String)request.getAttribute("id");
	%>
	
	<!-- 출력 -->
	<h2> <%=page_login%> </h2>
	<%
		if( result == 0 ) {
			// 아이디가 없다
			%>
			<script type="text/javascript">
				<!--
				erroralert( idcheckerror );
				//-->
			</script>
			<%		
		} else {
			// 아이디가 있다
			if( result == 1 ) {
				// 비밀번호가 같다
				session.setAttribute( "memId", id );	
				response.sendRedirect( "main.do" );
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
		}
	%>



























