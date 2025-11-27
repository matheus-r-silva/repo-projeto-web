<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1" />
	    <meta name="description" content="" />
	    <meta name="generator" content="Astro v5.13.2" />
	    <title>Teste para Includes</title>
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
		<%@ include file="header.jsp"%>
		<!-- INCLUDES -->
		
		<main>
		<div id="myCarousel" class="carousel slide mb-6" data-bs-ride="carousel">
	        <div class="carousel-indicators">
		          <button type="button"
		            data-bs-target="#myCarousel"
		            data-bs-slide-to="0"
		            class="active"
		            aria-current="true"
		            aria-label="Slide 1"
		          ></button>
		          <button
		            type="button"
		            data-bs-target="#myCarousel"
		            data-bs-slide-to="1"
		            aria-label="Slide 2"
		          ></button>
		          <button
		            type="button"
		            data-bs-target="#myCarousel"
		            data-bs-slide-to="2"
		            aria-label="Slide 3"
		          ></button>
	        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <svg
              aria-hidden="true"
              class="bd-placeholder-img"
              height="100%"
              preserveAspectRatio="xMidYMid slice"
              width="100%"
              xmlns="http://www.w3.org/2000/svg"
            >
              <rect
                width="100%"
                height="100%"
                fill="var(--bs-secondary-color)"
              ></rect>
            </svg>
            <div class="container">
              <div class="carousel-caption text-start">
                <h1>Entenda como funciona nossa ferramenta</h1>
                <p class="opacity-75">
                  Se inscreva para manter o histórico dos serviços, ou use de forma anônima
                </p>
                <p>
                  <a class="btn btn-lg btn-primary" href="perfil.html">Login</a>
                </p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <svg
              aria-hidden="true"
              class="bd-placeholder-img"
              height="100%"
              preserveAspectRatio="xMidYMid slice"
              width="100%"
              xmlns="http://www.w3.org/2000/svg"
            >
              <rect
                width="100%"
                height="100%"
                fill="var(--bs-secondary-color)"
              ></rect>
            </svg>
            <div class="container">
              <div class="carousel-caption">
                <h1>Facilite seu processo de denúncia</h1>
                <p>
                  Denuncie! Se preferir, proteja sua privacidade também.
                </p>
                <p><a class="btn btn-lg btn-primary" href="#">Veja mais</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <svg
              aria-hidden="true"
              class="bd-placeholder-img"
              height="100%"
              preserveAspectRatio="xMidYMid slice"
              width="100%"
              xmlns="http://www.w3.org/2000/svg"
            >
              <rect
                width="100%"
                height="100%"
                fill="var(--bs-secondary-color)"
              ></rect>
            </svg>
            <div class="container">
              <div class="carousel-caption text-end">
                <h1>Nos ajude a melhorar com o seu feedback!</h1>
                <p>
                  Cada avaliação é importante para o nosso crescimento
                </p>
                <p>
                  <a class="btn btn-lg btn-primary" href="#">Avaliar</a>
                </p>
              </div>
            </div>
          </div>
        </div>
        <button
          class="carousel-control-prev"
          type="button"
          data-bs-target="#myCarousel"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          data-bs-target="#myCarousel"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      <!-- Marketing messaging and featurettes
  ================================================== -->
      <!-- Wrap the rest of the page in another container to center all the content. -->
      <div class="container marketing">
        <!-- Three columns of text below the carousel -->
        <div class="row">
          <div class="col-lg-4">
            <svg
              aria-label="Placeholder"
              class="bd-placeholder-img rounded-circle"
              height="140"
              preserveAspectRatio="xMidYMid slice"
              role="img"
              width="140"
              xmlns="http://www.w3.org/2000/svg"
            >
              <title>Placeholder</title>
              <rect
                width="100%"
                height="100%"
                fill="var(--bs-secondary-color)"
              ></rect>
            </svg>
            <h2 class="fw-normal">Código Penal</h2>
            <p>
             	Fundamentos do cógio Penal para conhecer as principais infrações e guiar no uso da ferramenta
            </p>
            <p>
              <a class="btn btn-secondary" href="https://www.jusbrasil.com.br/artigos/classificacao-dos-crimes/582645746">Mais &raquo;</a>
            </p>
          </div>
          <!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <svg
              aria-label="Placeholder"
              class="bd-placeholder-img rounded-circle"
              height="140"
              preserveAspectRatio="xMidYMid slice"
              role="img"
              width="140"
              xmlns="http://www.w3.org/2000/svg"
            >
              <title>Placeholder</title>
              <rect
                width="100%"
                height="100%"
                fill="var(--bs-secondary-color)"
              ></rect>
            </svg>
            <h2 class="fw-normal">Direito Civil</h2>
            <p>
              Fundamentos do Direito para auxiliar o cidadão no reconhecimento dos seus direitos
            </p>
            <p>
              <a class="btn btn-secondary" href="https://www.jusbrasil.com.br/artigos/fundamentos-do-direito-civil/332552053">Mais &raquo;</a>
            </p>
          </div>
          <!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <svg
              aria-label="Placeholder"
              class="bd-placeholder-img rounded-circle"
              height="140"
              preserveAspectRatio="xMidYMid slice"
              role="img"
              width="140"
              xmlns="http://www.w3.org/2000/svg"
            >
              <title>Placeholder</title>
              <rect
                width="100%"
                height="100%"
                fill="var(--bs-secondary-color)"
              ></rect>
            </svg>
            <h2 class="fw-normal">Guias para ferramenta</h2>
            <p>
              Em desenvolvimento.
              <!--  Entenda como utilizar nossa ferramenta para utilizar nossos serviços.-->
            </p>
            <p>
              <a class="btn btn-secondary" href="#">Mais &raquo;</a>
            </p>
          </div>
          <!-- /.col-lg-4 -->
        </div>
        <!-- /.row -->
        <!-- START THE FEATURETTES -->
        <hr class="featurette-divider" />
        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading fw-normal lh-1">
             Sobre o projeto.
              <span class="text-body-secondary"></span>
            </h2>
            <p class="lead">
              O presente projeto tem por objetivo desenvolver uma solução tecnológica voltada ao usuário comum cuja função principal é servir como um serviço de apoio na denúncia de crimes e infrações.
              Promover informações pertinentes aos direitos Civis e o Código Penal para que sirvam como auxílio no uso da nossa ferramenta. 
              E como parte de uma atividade acadêmica de aprendizagem de programação web utilizando ferramentas de programação como linguagem Java,
              Java Server Pages, Banco de Dados MySQL e o framework SpringBoot.
            </p>
          </div>
          <div class="col-md-5">
            <svg
              aria-label="Placeholder: 500x500"
              class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
              height="500"
              preserveAspectRatio="xMidYMid slice"
              role="img"
              width="500"
              xmlns="http://www.w3.org/2000/svg"
            >
              <title>Placeholder</title>
              <rect
                width="100%"
                height="100%"
                fill="var(--bs-secondary-bg)"
              ></rect>
              <text x="50%" y="50%" fill="var(--bs-secondary-color)" dy=".3em">
                demo
              </text>
            </svg>
          </div>
        </div>
        <hr class="featurette-divider" />
        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading fw-normal lh-1">
              Sobre o grupo.
              <span class="text-body-secondary"></span>
            </h2>
            <p class="lead">
              Como parte de um projeto Integrador da UNICEPLAC, criamos este website como aprendizagem da unidade curricular e também como
              resolução da problemática proposta por nós integrantes. Buscamos melhorar o processo de denúncia através do meio digital com a
              criação de um site, o qual faz parte do plano de aula.
            </p>
          </div>
          <div class="col-md-5 order-md-1">
            <svg
              aria-label="Placeholder: 500x500"
              class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
              height="500"
              preserveAspectRatio="xMidYMid slice"
              role="img"
              width="500"
              xmlns="http://www.w3.org/2000/svg"
            >
              <title>Placeholder</title>
              <rect
                width="100%"
                height="100%"
                fill="var(--bs-secondary-bg)"
              ></rect>
              <text x="50%" y="50%" fill="var(--bs-secondary-color)" dy=".3em">
                demo
              </text>
            </svg>
          </div>
        </div>
        <hr class="featurette-divider" />
        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading fw-normal lh-1">
              Sobre a solução 
              <span class="text-body-secondary"></span>
            </h2>
            <p class="lead">
              Buscamos melhorar o processo de denuncias pelo meio digital com o uso do website. 
              Tendo em vista que na internet criou-se inúmeras categorias novas de infrações, queremos
              prover informações sobre como identificá-los e como agir diante dos crimes no ciberespaço.
            </p>
          </div>
          <div class="col-md-5">
            <svg
              aria-label="Placeholder: 500x500"
              class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
              height="500"
              preserveAspectRatio="xMidYMid slice"
              role="img"
              width="500"
              xmlns="http://www.w3.org/2000/svg"
            >
              <title>Placeholder</title>
              <rect
                width="100%"
                height="100%"
                fill="var(--bs-secondary-bg)"
              ></rect>
              <text x="50%" y="50%" fill="var(--bs-secondary-color)" dy=".3em">
                demo
              </text>
            </svg>
          </div>
        </div>
        <hr class="featurette-divider" />
        <!-- /END THE FEATURETTES -->
      </div>
      <!-- /.container -->
		</main>
		
		<!-- INCLUDES -->
		<%@ include file="rodape.jsp"%>
	</body>
</html>