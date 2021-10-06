<%-- 
    Document   : cadastrar
    Created on : 5 de ago. de 2021, 16:18:58
    Author     : vinicius.batista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./style/cadastrar.css">
        <link rel="shortcut icon" type="image/x-icon" href="./favico.ico/logosite1.jpeg"/>
        <script src="./Script/validaCep.js" type='module' defer></script>
        
        <title>Cadastrar | Matrícula Virtual</title>
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
        <div class="content">
            <h1>Preencha os seus dados</h1>
            <form action="cadastro.jsp">
                <div class="content-wrapper">
                    <div class="box">
                        <div class="line-one">
                            <div class="name">
                                <p>Nome Completo *</p>
                                <input id="usuario" type="text" name="nome" pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+$" placeholder="Insira Nome Completo" required="required">
                            </div>
                            <div class="date">
                                <p>Data de Nascimento *</p>
                                <input type="date" name="dataNascimento" placeholder="Data Nascimento" required="required">
                            </div>
                            <div class="cpf">
                                <p>CPF *</p>
                                <input type="text" id="cpf" name="cpf" placeholder="000.000.000-00" required="required">
                            </div>
                        </div> 
                        <div class="line-one">
                            <div class="rg">
                                <p>RG *</p>
                                <input type="text" id="rg" name="rg" placeholder="0.000.000" required="required">
                            </div>
                            <div class="sex">
                                <label for="sexo">Sexo</label> 
                                <select id="sexo" name="sexo">
                                    <option value="-">-</option>
                                    <option value="masculino">Masculino</option>
                                    <option value="feminino">Feminino</option>
                                </select> 
                            </div>
                        </div>  
                        <div class="line">
                            <div class="nameRes">
                                <p>Nome Responsável *</p>
                                <input type="text" name="nomeResponsavel" pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+$" placeholder="Nome Responsável" required="required">
                            </div>
                            <div class="phone">
                                <p>Telefone/Celular *</p>
                                <input type="text" name="fone" id="phone" placeholder="(00) 0000-0000" required="required">
                            </div>
                        </div>    
                        <div class="email">
                            <p>E-mail *</p>
                            <input type="email" name="email" placeholder="Insira seu E-mail" required="required">
                        </div>
                        <div class="line-two">
                            <div class="cep">
                                <p>CEP *</p>
                                <input type="text" id="cep" name="cep" placeholder="Insira seu CEP">
                            </div>
                            <div class="rua">
                                <p>Rua *</p>
                                <input type="text" id="endereco" name="rua" placeholder="Insira sua Rua">
                            </div>
                            <div class="numCasa">
                                <p>Número *</p>
                                <input type="number" name="numeroCasa" placeholder="Insira o Número">
                            </div>
                        </div>    
                        <div class="line-three">
                            <div class="bairro">
                                <p>Bairro *</p>
                                <input type="text" id="bairro" name="bairro" placeholder="Insira seu Bairro">
                            </div>
                            <div class="cidade">
                                <p>Cidade *</p>
                                <input type="text" id="cidade" name="cidade" placeholder="Insira sua Cidade">
                            </div>
                            <div class="estado">
                                <p>Estado *</p>
                                <input type="text" id="estado" name="estado" placeholder="Insira seu Estado">
                            </div>
                        </div>
                        <div class="line-one">
                            <div class="password">
                                <p>Senha *</p>
                                <input type="password" name="senha" placeholder="Insira sua senha" id="password "required="required">
                            </div>
                            <div class="confirmPass">
                                <p>Confirmar Senha *</p>
                                <input type="password" name="confirmaSenha" placeholder="Confirme sua senha" id="confirm_password" required="required">
                            </div>
                        </div>    
                    </div>
                </div>
                <input type="submit" name="cadastro" disable="true" value="Sign up">
                <p class="login">Já possui uma conta? Faça seu</p><a href="loginAluno.jsp">login!</a>
            </form>                
        </div>
        <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
        <script type="text/javascript" src="js/jquery.mask.js"></script>
        <script>
            $(document).ready(function(){
                $('#cpf').mask('000.000.000-00');
                $('#phone').mask('(00)00000-0000');
                $('#rg').mask('0.000.000');
                $('#cep').mask('00000000');
            });
            
        </script>
    </body>
</html>
