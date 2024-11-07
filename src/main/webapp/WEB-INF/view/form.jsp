<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1" %>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form - Produto</title>
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

            <div class="form-container">
                <div class="formulario">

                    <form method="POST" action="${produto.id != null ? 'atualizarProduto' : 'salvarProduto' }?id=${produto.id}">
                        <div>
                            <label for="">Foto do Produto</label>
                            <input type="file">
                        </div>

                        <div>
                            <input type="text" name="nome" id="nome" placeholder="Insira o nome do produto">
                        </div>

                        <div>
                            <input type="text" name="preco" id="preco" placeholder="Insira o preco do produto">
                        </div>

                        <div>

                            <input type="text" name="descricao" id="descricao"
                                placeholder="Insira a descricao do produto">
                        </div>

                        <div class="validade-container">
                            <label for="">Validade Lote</label>
                            <input type="date" name="validade_lote" id="validade">
                        </div>


                        <!-- Demais campos... -->
                        <div class="sendbtn-container">
                            <button type="submit" id="send-btn">Enviar</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>

        <footer class="footer">
            <div class="reserved-rights">
                <h3>All Rights ReservedÂ®</h3>
            </div>
            <div class="contato">
                <h3>Entre em contato</h3>
                <p>atendimento@bostaŽ.com.br</p>
                <p>(11) 969246-9691</p>
            </div>
        </footer>

    </div>

</body>

</html>