<%-- 
    Document   : login
    Created on : Jul 29, 2021, 10:27:13 PM
    Author     : Vinicius
--%>
<%@page import="Model.Aluno"%>
<%@page import="DAO.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./style/login.css">
        <link rel="shortcut icon" type="image/x-icon" href="./favico.ico/logosite1.jpeg"/>
        <title>Login Aluno | Matrícula Virtual</title>
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
            <form class="box" action="logarAluno.jsp">
                <div class="title">
                    <h1>Login Aluno</h1> 
                    <p>Matrícula Virtual</p>
                </div>
                <input type="text" name="cpf" id="cpf" placeholder="Insira seu CPF" required="required">
                <input type="password" name="senha" placeholder="Password" required="required">
                <%@include file = "include/msg.jsp" %>
                <input type="submit" name="entrar" value="Sign in">
                <a class="cadastro" href="cadastrar.jsp?">Cadastre-se</a>
                <a class="cadastro" href="alterarSenha.jsp">Alterar Senha</a>
            </form>
        </div>
        <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
        <script type="text/javascript" src="js/jquery.mask.js"></script>
        <script>
            $(document).ready(function(){
                $('#cpf').mask('000.000.000-00');
            });
            
        </script>
    </body>
</html>
