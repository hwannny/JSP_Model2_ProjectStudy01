<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="setting.jsp" %>
<link href="<%=project%>style.css" rel="stylesheet" type="text/css">
<script src="<%=project%>script.js"></script>

	<!-- 출력 -->
	<h2> <%=page_modify%> </h2>
	
	<form method="post" action="modifyView.do" name="passwdform" onsubmit="return passwdcheck()">
		<table>
			<tr>
				<th colspan="2"> <%=msg_passwd%> </th>						
			</tr>
			<tr>
				<th> <%=str_passwd%> </th>
				<td>
					<input class="input" type="password" name="passwd" maxlength="30" autofocus>
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<input class="inputbutton" type="submit" value="<%=btn_mod%>">
					<input class="inputbutton" type="button" value="<%=btn_mod_cancel%>"
						onclick="location='main.do'">
				</th>
			</tr>
		</table>	
	</form>
















