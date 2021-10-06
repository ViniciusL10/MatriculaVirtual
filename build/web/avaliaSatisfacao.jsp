<%-- 
    Document   : avaliaSatisfacao
    Created on : 19 de ago. de 2021, 14:11:40
    Author     : vinicius.batista
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Aluno"%>
<%@page import="DAO.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="./favico.ico/logosite1.jpeg"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="./style/avaliaSatisfacao.css" rel="stylesheet">
        <script src="./Script/avalia.js"></script>
        <title>Avaliação de Satisfação | Matrícula Virtual</title>
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
                            <%}%>
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
                                    <h1>Avaliação de Satisfação</h1>
                                </div>
                                <div class="content">
                                    <h1>Sobre nosso Site</h1>
                                    <div class="box-information">
                                        <div class="information">
                                            <div class="content-information">                                               
                                                <p>Dinâmica :</p>
                                                <div class="script">
                                                    <a href="javascript:void(0)" onclick="Avaliar(1)">
                                                        <img src="Imagem/star0.png" id="s1"></a>

                                                    <a href="javascript:void(0)" onclick="Avaliar(2)">
                                                        <img src="Imagem/star0.png" id="s2"></a>

                                                    <a href="javascript:void(0)" onclick="Avaliar(3)">
                                                        <img src="Imagem/star0.png" id="s3"></a>

                                                    <a href="javascript:void(0)" onclick="Avaliar(4)">
                                                        <img src="Imagem/star0.png" id="s4"></a>

                                                    <a href="javascript:void(0)" onclick="Avaliar(5)">
                                                        <img src="Imagem/star0.png" id="s5"></a> 
                                                </div>
                                            </div>
                                            <div class="content-information">
                                                <p>Funcionamento :</p>
                                                <div class="script">
                                                    <a href="javascript:void(0)" onclick="Avaliar2(1)">
                                                        <img src="Imagem/star0.png" id="s11"></a>

                                                    <a href="javascript:void(0)" onclick="Avaliar2(2)">
                                                        <img src="Imagem/star0.png" id="s12"></a>

                                                    <a href="javascript:void(0)" onclick="Avaliar2(3)">
                                                        <img src="Imagem/star0.png" id="s13"></a>

                                                    <a href="javascript:void(0)" onclick="Avaliar2(4)">
                                                        <img src="Imagem/star0.png" id="s14"></a>

                                                    <a href="javascript:void(0)" onclick="Avaliar2(5)">
                                                        <img src="Imagem/star0.png" id="s15"></a> 
                                                </div> 
                                            </div>
                                            <div class="content-information ci1">
                                                <p>Acessibilidade :</p>
                                                <div class="script">
                                                    <a href="javascript:void(0)" onclick="Avaliar3(1)">
                                                        <img src="Imagem/star0.png" id="s21"></a>

                                                    <a href="javascript:void(0)" onclick="Avaliar3(2)">
                                                        <img src="Imagem/star0.png" id="s22"></a>

                                                    <a href="javascript:void(0)" onclick="Avaliar3(3)">
                                                        <img src="Imagem/star0.png" id="s23"></a>

                                                    <a href="javascript:void(0)" onclick="Avaliar3(4)">
                                                        <img src="Imagem/star0.png" id="s24"></a>

                                                    <a href="javascript:void(0)" onclick="Avaliar3(5)">
                                                        <img src="Imagem/star0.png" id="s25"></a> 
                                                </div>
                                            </div>
                                          <p>Outros:</p> <textarea rows="10" cols="40" maxlength="500"></textarea>
                                        </div>
                                        <script>
                                            function showModal() {
                                                var element = document.getElementById("modal");
                                                element.classList.add("show-modal");
                                            }

                                            function closeModal() {
                                                var element = document.getElementById("modal");
                                                element.classList.remove("show-modal");
                                            }
                                        </script>
                                        <div class="enviarAva">
                                            <button type="submit" class="button button-mat btn--5" onclick="showModal()">
                                                <div class="psuedo-text">Enviar</div>
                                            </button>
                                        </div>
                                        <div class="modal" id="modal">
                                            <div class="modal-content">
                                                <h1>Enviado com Sucesso</h1>
                                                <p>Sua avaliação foi enviada com sucesso!</p>
                                                <div class="modal-footer">
                                                    <button class="btn" id="moda" data-dismiss="modal" onclick="javascript:window.location.reload()">Close</button>
                                                </div>
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
