<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Valor da área da circunferência</title>
	</head>
	<body>
		<%
			int intRaio;
			double dblArea;
			
			if(request.getParameter("fldRaio") != null)
				intRaio = Integer.parseInt(request.getParameter("fldRaio"));
			else
				intRaio = 0;
			
			dblArea = (intRaio * intRaio) * 3.14151692;
		%>
		
		<h2>Valor da área da circunferência é: <%= dblArea %></h2>
	</body>
</html>