<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Exemplo de elementos sintáticos de JSP</title>
	</head>
	<body>
	<%! int intContaAcesso = 0; %>
	<%
		java.util.Date DataAtual = new java.util.Date();
			String strData = new SimpleDateFormat("dd/MM/yyyy").format(DataAtual);
	%>
	<h2>Data atual: <%= strData %></h2><br>
	<%
		out.println("<h2>Contagem de atualizações da página</h2><br>");
		intContaAcesso++;
	%>
	<h2>Numero de vezes que você acessou/atualizou esta página: <%= intContaAcesso %>.</h2>
	</body>
</html>