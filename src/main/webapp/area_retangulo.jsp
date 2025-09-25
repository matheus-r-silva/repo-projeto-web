<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Valor da área do retângulo</title>
	</head>
	<body>
		<%
			int intAltura, intLargura, intArea;
				
			if(request.getParameter("fldAltura") != null)
				intAltura = Integer.parseInt(request.getParameter("fldAltura"));
			else
				intAltura = 0;
			
			if(request.getParameter("fldLargura") != null)
				intLargura = Integer.parseInt(request.getParameter("fldLargura"));
			else
				intLargura = 0;
			
			intArea = intAltura * intLargura;
		%>
		
		<h2>Valor da área do triângulo é: <%= intArea %></h2>
	</body>
</html>