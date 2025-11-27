<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1" />
	    <meta name="description" content="" />
	    <meta name="generator" content="Astro v5.13.2" />
	    <title>Cadastro</title>
	    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/headers/"/>
	    <script src="../webapp/assets/js/color-modes.js"></script>
	    <link href="../webapp/assets/dist/css/bootstrap.min.css" rel="stylesheet" />
	    <meta name="theme-color" content="#712cf9" />
	    <link href="headers.css" rel="stylesheet" />
	    <link href="estilos.css" rel="stylesheet" />
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
   		integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
	</head>
	<body>
		<%@ include file="header.jsp"%>
		<!-- INCLUDES -->
		
		<div class="container">
			<div class="container">
			    <div class="form-wrapper">
			        <form method="POST" action="AdicionaUsuario" name="formCadastro">
			            <h2 class="titulo">Cadastro</h2>
			            
			            <div class="input-group">
			                <label for="nome">Nome</label>
			                <input type="text" id="nome" name="txtNome" placeholder="Digite seu nome" required>
			            </div>
			            
			            <div class="input-group">
			                <label for="email">Email</label>
			                <input type="email" id="email" name="txtEmail" placeholder="Digite seu email" required>
			            </div>
			            
			            <div class="input-group">
			                <label for="senha">Senha</label>
			                <input type="password" id="senha" name="txtSenha" placeholder="Digite sua senha" required>
			            </div>
			            
			            <div class="input-group">
			                <label for="confirmaSenha">Confirmar Senha</label>
			                <input type="password" id="confirmaSenha" name="txtConfirmaSenha" placeholder="Confirme sua senha" required>
			            </div>
			            
			            <button type="submit" class="submit-btn">Registrar</button>
			        </form>
			    </div>
			</div>
		</div>
		
		<%@ include file="rodape.jsp" %>
		<!-- INCLUDES -->
	</body>
</html>