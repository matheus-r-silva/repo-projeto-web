<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	 	<meta charset="utf-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1" />
	    <meta name="description" content="" />
	    <meta name="generator" content="Astro v5.13.2" />
	    <link
	      rel="canonical"
	      href="https://getbootstrap.com/docs/5.3/examples/carousel/"
	    />
	    <script src="../webapp/assets/js/color-modes.js"></script>
	   <!-- ../assets/js/color-modes.js -->
	    <link href="../webapp/assets/dist/css/bootstrap.min.css" rel="stylesheet" />
	    <!-- ../assets/dist/css/bootstrap.min.css -->
	    <meta name="theme-color" content="#712cf9" />
	    <link href="carousel.css" rel="stylesheet" />
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
	    integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
	</head>
	<body>
		<header data-bs-theme="dark">
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="inicio.html">Cidadania+</a>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarCollapse"
            aria-controls="navbarCollapse"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav me-auto mb-2 mb-md-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="perfil.html">Perfil</a>
              </li>
              <li class="nav-item"><a class="nav-link" href="denuncia.html">Denúncias</a></li>
              <li class="nav-item">
                <a class="nav-link" href="listarUsuarios.jsp">Listar contas</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="historico.html">Histórico</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="index.jsp">Includes</a>
              </li>
            </ul>
           <!--<div class="col-md-3 text-end">
            <button type="button" class="btn btn-outline-primary me-2">
              Registrar
            </button>
            <button type="button" class="btn btn-primary">Cadastrar</button>
          </div> -->
          <div class="col-md-3 text-end">
			  <button type="button" class="btn btn-outline-primary me-2" id="btnRegistrar">
			    Registrar
			  </button>
			  
			  <button type="button" class="btn btn-primary" id="btnCadastrar">
			    Cadastrar
			  </button>
		</div>

		<script>
			  const botaoRegistrar = document.getElementById('btnRegistrar');
			  const botaoCadastrar = document.getElementById('btnCadastrar');
			
			  botaoRegistrar.addEventListener('click', function() {
			    console.log('Botão Registrar clicado! Redirecionando...');
			    window.location.href = 'registrar.html'; 
			  });
			
			  botaoCadastrar.addEventListener('click', function() {
			    console.log('Botão Cadastrar clicado! Redirecionando...');
			    window.location.href = 'perfil.html';
			  });
		</script>
            <!--<form class="d-flex" role="search">
              <input
                class="form-control me-2"
                type="search"
                placeholder="Pesquisar"
                aria-label="Search"
              />
              <button class="btn btn-outline-success" type="submit">
                Procurar
              </button>
            </form>  -->
          </div>
        </div>
      </nav>
    </header>
	</body>
</html>