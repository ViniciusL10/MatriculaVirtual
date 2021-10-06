<%-- 
    Document   : loginEscola
    Created on : 13 de set. de 2021, 15:34:02
    Author     : vinicius.batista
--%>

<%@page import="Model.Aluno"%>
<%@page import="DAO.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./style/loginEscola.css">
        <link rel="shortcut icon" type="image/x-icon" href="./favico.ico/logosite1.jpeg"/>
        <title>Login Escola | Matrícula Virtual</title>
    </head>
    <body>
        <header>
            <div class="cabecalho">
                <div class="cabecalho-solid">
                    <img class="logotipo" src="./Imagem/logosite1.jpeg" alt="Logotipo Matricula Virtual">
                    <h1>Matrícula Virtual</h1>
                    <a class="mudaCadastro" href="index.html">Mudar Cadastro</a>
                </div> 
            </div> 
        </header>
        <div class="box-login">
            <form class="box" action="logarEscola.jsp">
                <div class="title">
                    <h1>Login Escola</h1> 
                    <p>Matrícula Virtual</p>
                </div>
                <input type="text" name="cnpj" id="cnpj" placeholder="Insira o CNPJ" required="required">
                <input type="password" name="senha" placeholder="Password" required="required">
                <%@include file ="include/msg.jsp" %>
                <input type="submit" name="entrar" value="Sign in">
            </form>
        </div>
        <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
        <script type="text/javascript" src="js/jquery.mask.js"></script>
        <script>
            $(document).ready(function(){
                $('#cnpj').mask('000.000.000-00');
            });
            
        </script>        
    </body>
</html>

