<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="css/style.css?v=1">
</head>

<body>

	<nav class="nav-bar">
		<a href="home"> <img src="images/mercadu.webp" alt="">
		</a>
		<div class="container-return">
			<a class="return-btn" href="formfuncionario">Form - Funcionarios</a> <a class="funcionarios-btn"
				href="funcionarios">Funcionarios</a>
		</div>
		<div class="container-search">

			<label for=""></label> <input type="text" placeholder="Busque por produtos..." id="search-bar">
		</div>
	</nav>

	<div class="page-container">
		<div class="content-wrap">

			<div class="funcionarios-board">
			
			<c:forEach items="${funcionarios}" var="funcionarios">	
				<div class="card-funcionario">
				<a href="funcionario?idFunc=${funcionarios.idFunc}">
					<div class="img-funcionario">
						<img src="images/tricky-young-charismatic-africanamerican-handsome-man-prepare-surpirse-shushing-with-devious-happy-smile-squinting-having-secret-tell-be-quiet-standing-white-background.png"
							alt="">
					</div>
					<div class="text-funcionario">
						<h2>${funcionarios.nomeFunc}</h2>
						<p id="cargo-home">${funcionarios.cargo}</p>
						<p>${funcionarios.idade}</p>
					</div>
				</a>
				</div>
			</c:forEach>
				
				
				
				
				
				
			</div>

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