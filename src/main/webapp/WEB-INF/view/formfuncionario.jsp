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
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <nav class="nav-bar">
        <a href="home"> <img src="images/mercadu.webp" alt="">
        </a>
        <div class="container-return">
            <a class="return-btn" href="form">Form - Funcionarios</a> <a class="funcionarios-btn"
                href="./funcionarios.html">Funcionarios</a>
        </div>
        <div class="container-search">

            <label for=""></label> <input type="text" placeholder="Busque por produtos..." id="search-bar">
        </div>
    </nav>
    <div class="page-container">
        <div class="content-wrap">

            <div class="form-container">
                <div class="formulario">

                    <form method="POST"
                        action="${produto.id != null ? 'atualizarProduto' : 'salvarProduto' }?id=${produto.id}">
                        <div>
                            <label for="">Foto do Funcionario</label>
                            <input type="file">
                        </div>

                        <div>
                            <input type="text" name="nameFunc" id="nome" placeholder="Insira o nome do funcionario">
                        </div>

                        <div>
                            <input type="text" name="position" id="cargo" placeholder="Insira o cargo do funcionario">
                        </div>

                        <div>

                            <input type="text" name="age" id="idade"
                                placeholder="Insira a idade do funcionario">
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
                <p>atendimento@bostað©ð¤.com.br</p>
                <p>(11) 969246-9691</p>
            </div>
        </footer>
    </div>

</body>

</html>