<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cálculo de áreas</title>
	</head>
	<body>
		<%
			int intFiguraGeometrica;
			String strTituloFormulario, strFormulario;
			
			if(request.getParameter("TipoFigura") != null)
				intFiguraGeometrica = Integer.parseInt(request.getParameter("TipoFigura"));
			else
				intFiguraGeometrica = 0;
			
			if(intFiguraGeometrica == 1){
				strTituloFormulario = "Cálculo da área de uma retângulo";
				strFormulario = "<form name='formCalculoAreasFiguras' method='get' action='area_retangulo.jsp'>"; 
			}
			else if(intFiguraGeometrica == 2){
				strTituloFormulario = "Cálculo da área de uma circunferência";
				strFormulario = "<form name='formCalculoAreasFiguras' method='get' action='area_circunferencia.jsp'>";
			}
			else if(intFiguraGeometrica == 3){
				strTituloFormulario = "Cálculo da área de um triângulo retângulo";
				strFormulario = "<form name='formCalculoAreasFiguras' method='get' action='area_triangulo.jsp'>";
			}
			else{
				strTituloFormulario = "** Erro **";
				strFormulario ="<form name='formCalculoAreasFiguras'>";
			}
			
			out.println(strFormulario);
		%>
		<h2 style="text-align: center;"><%= strTituloFormulario %></h2>
		
		<%
			if((intFiguraGeometrica == 1) || (intFiguraGeometrica == 3)){
				out.println("<p>Digite o valor da altura:");
				out.println("<input name='fldAltura' type='text' syze='8' maxlength='8' />");
				out.println("</p>");
				
				out.println("<p>Digite o valor da largura:");
				out.println("<input name='fldLargura' type='text' size='8' maxlength='8' />");
				out.println("</p>");
				
			}else if(intFiguraGeometrica == 2){
				out.println("<p>Digite o valor do raio da circunferência:");
				out.println("<input name='fldRaio' type='text' size='8' maxlength='8' />");
				out.println("</p>");
				
			}
			else
				out.println("<h2>Deve ser especificado o tipo de figura!!</h2>");
		%>
			<p>
				<input type="submit" name="btnCalcular" value="Calcular"/>
			</p>
		</form> 
	</body>
</html>