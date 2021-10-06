<%-- 
    Document   : confirmaEmail
    Created on : 17 de set. de 2021, 15:55:34
    Author     : vinicius.batista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./style/alteraSenha.css">
        <link rel="shortcut icon" type="image/x-icon" href="./favico.ico/logosite1.jpeg"/>
        <title>Esqueceu sua senha? | Matricula Virtual</title>
    </head>
    <body>
        <header>                  
            <div class="cabecalho">
                <div class="cabecalho-solid">
                    <img class="logotipo" src="./Imagem/logosite1.jpeg" alt="Logotipo Matricula Virtual">
                    <h1>Matrícula Virtual</h1>
                </div> 
            </div>                      
        </header>
        <form action="recebeAlterarSenha.jsp">
            <div class="content-cpf">
                <div class="content-information">
                    <div class="box">
                        <div class="header">
                            <h1>Encontre sua Conta</h1>
                        </div>
                        <div class="content-box">
                            <p>Insira seu CPF para procurar a sua conta e alterar sua senha.</p>
                            <input type ="text" placeholder="Insira seu CPF" name="cpf">
                        </div>
                        <div class="footer-box">
                        </div>
                    </div>
                </div>
            </div>
            <div class="content">
                <div class="content-information">
                    <div class="box">
                        <div class="header">
                            <h1>Alterar Senha</h1>
                        </div>
                        <div class="content-box">
                            <p>Digite sua nova senha</p>
                            <input type ="password" placeholder="Insira sua nova senha" name="senha">
                        </div>
                        <div class="content-box">
                            <p>Confirme sua senha</p>
                            <input type ="password" placeholder="Confirme sua senha" name="senha2">
                        </div>
                        <div class="footer-box">
                            <a href="loginAluno.jsp">Cancelar</a>
                            <input class="pesquisar" type="submit" value="Alterar">
                        </div>
                    </div>
                </div>
            </div>
        </form>    
    </body>
</html>
