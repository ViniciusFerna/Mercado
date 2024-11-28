<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Funcionario</title>
    <link rel="stylesheet" type="text/css" href="css/style.css?v=1">
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


            <div class="funcionario-container">

                <div class="funcionario-image">
                    <img src="images/tricky-young-charismatic-africanamerican-handsome-man-prepare-surpirse-shushing-with-devious-happy-smile-squinting-having-secret-tell-be-quiet-standing-white-background.png"
                        alt="">
                </div>

                <div class="info-container">

                    <h1 id="nome-funcionario">Nome: ${funcionario.nomeFunc}</h1>
                    <h2 id="cargo-funcionario">Cargo: ${funcionario.cargo}</h2>
                    <h3 id="idade-funcionario">Idade: ${funcionario.idade}</h3>

                    <div class="editar-deletar-funcionario">
                        <a class="edit-btn" href="formfuncionario?idFunc=${funcionario.idFunc}">
                            Editar funcionario
                        </a>
                        <a class="delete-btn" href="deletarFuncionario?idFunc=${funcionario.idFunc}">
                            Deletar funcionario
                        </a>
                    </div>
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