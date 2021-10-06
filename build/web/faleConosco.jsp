<%-- 
    Document   : faleConosco
    Created on : 7 de set. de 2021, 15:02:42
    Author     : orthm
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Aluno"%>
<%@page import="DAO.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./style/faleConosco.css">
        <link rel="shortcut icon" type="image/x-icon" href="./favico.ico/logosite1.jpeg"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>Matricula Virtual | Fale Conosco</title>
    </head>
    <body>
        <%
          //verifica sessão - se usuário não está logado, abre a tela de login
          String usuario = (String) session.getAttribute("usuario");
          if(usuario == null){
              response.sendRedirect("index.html");
          }
          %>
        <div class="geral">
            <header>                  
                <div class="cabecalho">
                    <div class="cabecalho-solid">
                        <% 
                        String cpf = (String) session.getAttribute("usuario");
                        AlunoDAO alunoDAO = new AlunoDAO();
                        Aluno a = new Aluno();
                        List<Aluno> lista = alunoDAO.consultarAluno(cpf);
                        for (Aluno aluno: lista) {
                        %>                        
                        <div class="logo">
                            <img class="logotipo" src="./Imagem/logosite1.jpeg" alt="Logotipo Matricula Virtual">                        
                            <h1>Matrícula Virtual</h1>
                        </div>
                        <div class="iconMaterial">
                            <i class="material-icons" style="font-size:25px;color:orange;">account_box</i>
                            <h3> <% out.write(aluno.getNome()); %> </h3>
                            <i class="material-icons" style="font-size:15px;color:orange">exit_to_app</i><a href="loginAluno.jsp" data-toggle="modal" data-target="#myModal">Sair</a>
                        </div>
                    </div> 
                </div>                      
            </header>
            <div class="all-content">
                <div class="sidenav-wrapper">
                    <div class="sidenav">
                        <div class="sidenav-content">
                            <ul class="sidenav-list">
                                <li class="sidenav-item"><a href="menu.jsp"><span class="sidenav-icon"><i class="material-icons" style="font-size:30px;color:#03989E">home</i></span><span class="sidenav-name">Principal</span></a></li>
                                <li class="sidenav-item"><a href="dadosPessoais.jsp"><span class="sidenav-icon"><i class="material-icons" style="font-size:30px;color:#03989E">account_box</i></span><span class="sidenav-name">Dados Pessoais</span></a></li>
                                <li class="sidenav-item"><a href="cadastroMatricula.jsp"><span class="sidenav-icon"><i class="material-icons" style="font-size:30px;color:#03989E">school</i></span><span class="sidenav-name">Matricula</span></a></li>
                                <li class="sidenav-item"><a href="faleConosco.jsp"><span class="sidenav-icon"><i class="material-icons" style="font-size:30px;color:#03989E">question_answer</i></span><span class="sidenav-name">Fale Conosco</span></a></li>
                                <li class="sidenav-item"><a href="avaliaSatisfacao.jsp"><span class="sidenav-icon"><i class="material-icons" style="font-size:30px;color:#03989E">border_color</i></span><span class="sidenav-name">Avaliação de Satisfação</span></a></li>
                            </ul>
                        </div>                         
                    </div>
                </div>
                <div class="content-wrapper">
                    <div class="dashboard-wrapper">
                        <div class="box">
                            <div class="box-content">
                                <div class="title">
                                    <a class="icon" href="menu.jsp"><i class="material-icons" style="font-size:20px;color:#03989E">keyboard_return</i></a>
                                    <h1>Fale Conosco</h1>
                                </div>
                                <div class="content">
                                    <h1>Deixe sua Dúvida</h1>
                                    <div class="box-information">
                                        <div class="information">
                                            <div class="content-information">
                                                <form action="recebeFaleConosco.jsp">
                                                        <input type="hidden" value="<% out.write(aluno.getEmail()); %>" name="email">
                                                        <input type="hidden" value="<% out.write(aluno.getCpf()); %>" name="cpf">
                                                        <% } %>
                                                        <p>Favor deixar suas dúvidas na caixa de texto abaixo</p>
                                                        <p>Suas dúvidas serão respondidas em breve através do seu e-mail</p>
                                                        <p>Inserir Dúvidas:</p>
                                                        <textarea type="text" rows="10" cols="40" maxlength="500" id="duvida" name="duvida" placeholder="Digite sua dúvida"></textarea>
                                                        <input type="submit" name="duvida" value="Enviar">
                                                        <%@include file = "include/msg.jsp" %>
                                                </form>                                                                                                  
                                            </div> 
                                        </div>    
                                    </div>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer>
                <div class="local">
                    <p>R. Pres. Getúlio Vargas, 143 - Centro, Blumenau - SC
                        <br>
                       89010-140
                    </p>
                </div>  
                <div class="cabecalho-footer">
                    <img class="logotipo" src="./Imagem/logosite1.jpeg" alt="Logotipo Matricula Virtual">
                    <h1>Matrícula Virtual</h1>          
                </div> 
                <div class="footer_icons">
                    <div class="footer_icon"><a href="https://www.facebook.com/" target="_blank"><img class="face" src="./assets/face.png" alt="ícone facebook"></a></div>
                    <div class="footer_icon"><a href="https://www.instagram.com/" target="_blank"><img class="insta" src="./assets/insta.png" alt="ícone instagram"></a></div>
                    <div class="footer_icon"><a href="https://twitter.com/" target="_blank"><img class="twit" src="./assets/twit.png" alt="ícone twitter"></a></div>
                </div> 
            </footer>
        </div>
    </body>
</html>
