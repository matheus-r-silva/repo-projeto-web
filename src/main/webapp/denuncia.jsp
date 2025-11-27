<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Denuncia</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1"/>
	    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/carousel/"/>
	    <script src="../webapp/assets/js/color-modes.js"></script>
	   <!-- ../assets/js/color-modes.js -->
	    <link href="../webapp/assets/dist/css/bootstrap.min.css" rel="stylesheet" />
	    <!-- ../assets/dist/css/bootstrap.min.css -->
	    <meta name="theme-color" content="#712cf9" />
	    <link href="carousel.css" rel="stylesheet" />
	    <link href="denuncia.css" rel="stylesheet"/>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
    	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
	</head>
	<body>
		<%@ include file="header.jsp"%>
		<!-- INCLUDES -->
		
		<div class="secao-denuncia">
	    	<h2>Realizar denúncia</h2>
	    	<form method="post" action="#" name="formDenun">
	    		<div class="formulario-denuncia">
	    			<label>Codigo de infração:
	    				<input type="text" id="codigoInfra" name="dadoCodigo" required>
	    			</label>
	    		</div>
	    		
	    		<div class="formulario-denuncia">
	    			<label>Data do registro:
	    				<input type="date" name="dadoRegistro" required/>
	    			</label>
	    		</div>
	    		
	    		<div class="formulario-denuncia">
	    			<label>Anexo de arquivo:
	    				<input type="file" id="arquivo" name="dadoArquivo" accept="image/png, image/jpeg" required/>
	    			</label>
	    		</div> <br><br>
	    		
	    		<div class="formulario-denuncia">
	    			<label>Detalhes adicionais:
	    				<textarea id="descricao" name="dadoDesc" rows="5" cols="33">
	    					
	    				</textarea>
	    			</label>
	    		</div>
	    		
	    		<div>
	    			<input type="submit" value="Enviar">
	    		</div>
	    	</form>
    	</div>
		
		<!-- INCLUDES -->
		<%@ include file="rodape.jsp"%>
	</body>
</html>