<%@ page import="com.sds.icto.guestbook.vo.*" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<GuestbookVo> list = 
	(List<GuestbookVo>)request.getAttribute( "list" );
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	int index = 0;
	for( GuestbookVo vo : list ){
		index++;
	%>
	<br>
	<table width=510 border=1>
		<tr>
			<td>[<%=index %>]</td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getRegDate() %></td>
			<td><a href="deleteform.jsp?no=<%=vo.getNo() %>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4>
				<%=vo.getMessage() %>
			</td>
		</tr>
	</table>
	<%
	}
	%>
	
	<br>
</body>
</html>