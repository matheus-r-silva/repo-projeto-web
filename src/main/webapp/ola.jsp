<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<title>Olá</title>
	</head>
	<body>
		<%
			String name = request.getParameter("txtName");
			String senha = request.getParameter("txtSenha");
			if(name != null){
		%>
		
		<h1>Bem vindo(a) <%=name %></h1>
		<% } %>
		
	</body>
</html>