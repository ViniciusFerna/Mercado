<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1" %>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Produto</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <nav class="nav-bar">
        <a href="home">
            <img src="images/mercadu.webp" alt="">
        </a>
        <div class="container-return">
            <a class="return-btn" href="form">Form</a>
            <a href=""><img src="images/carrin.png" alt=""></a>
        </div>
        <div class="container-search">

            <label for=""></label>
            <input type="text" placeholder="Busque por produtos..." id="search-bar">
        </div>
    </nav>

    <div class="page-container">
        <div class="content-wrap">



            <div class="produto-container">

                <div class="produto-image">
                    <img src="images/pao-integral-marrom-no-tecido-preto-e-marrom.png" alt="">
                </div>

                <div class="info-container">

                    <h1 id="nome-produto">${produto.nome}</h1>
                    <p id="descricao-produto">${produto.descricao}</p>
                    <h3 id="validade-produto">Validade Lote: <br> ${produto.validade_lote}</h3>
                    <h1 id="preco-produto">R$ ${produto.preco}</h1>
                    
                    <div class="item-editar-pizza">
                    <a href="form?idProduto=${produto.id}">
                    	<button type="button">Editar prato</button>
                    </a>
                    <a href="deletarProduto?id=${produto.id}">	
                    	<button type="button">Deletar prato</button>
                    </a>
                    </div>
                </div>
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