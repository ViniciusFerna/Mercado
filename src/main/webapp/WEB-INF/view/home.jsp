<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home - Pizza</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>

	<nav class="nav-bar">
		<a href="home"> <img src="images/mercadu.webp" alt="">
		</a>
		<div class="container-return">
			<a class="return-btn" href="form">Form</a> <a class="funcionarios-btn" href="">Funcionarios</a>
		</div>
		<div class="container-search">

			<label for=""></label> <input type="text"
				placeholder="Busque por produtos..." id="search-bar">
		</div>
	</nav>

	<div class="page-container">
		<div class="content-wrap">

			<div class="container-hero">
				<div class="hero">
					<img src="images/produtospng.png" alt="">
					<h1>
						Mercado<span>Bosta</span>
					</h1>
				</div>
			</div>
			<!-- Card -->
			<!-- for { -->

			<div class="container-produtos">


					<!-- ${produtos} => ArrayList<Produtos> produtos -->
				<c:forEach items="${produtos}" var="produto" >
					<div class="card-produto">
						<a href="produto?id=${produto.id}">
						<!-- /produto ? idProduto=2 -->
							<div class="img-produto">
								<img
									src="images/pao-integral-marrom-no-tecido-preto-e-marrom.png"
									alt="Pizza">
							</div>
							<div class="info-produto">
								<h2>${produto.nome}</h2>
								<p>${produto.descricao}</p>
								<h1>R$ ${produto.preco}</h1>
							</div>
						</a>
					</div>
				</c:forEach>


			</div>

			<!-- } -->
		</div>

		<footer class="footer">
			<div class="reserved-rights">
				<h3>All Rights Reserved®</h3>
			</div>
			<div class="contato">
				<h3>Entre em contato</h3>
				<p>atendimento@bosta💩🤎.com.br</p>
				<p>(11) 969246-9691</p>
			</div>
		</footer>
	</div>

</body>

</html>