<%-- 
    Document   : menu
    Created on : 21 de set. de 2021, 16:28:29
    Author     : eduardo.orthmann
--%>
<%@page import  = "Model.Aluno"%>
<%@page import  = "java.util.List"%>
<%@page import  = "DAO.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <title>Home | Matrícula Virtual</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Venha facilitar sua matricula escolar!">
        <meta name="keywords" content="html5, tecnologia">
        <link rel="stylesheet" href="./style/menu.css">
        <link rel="shortcut icon" type="image/x-icon" href="./favico.ico/logosite1.jpeg"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        
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
                            <% } %>
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
                        <div class="title-welcome">
                            <div class="title-welcome-externo">
                                <h1>Seja Bem-vindo</h1>
                                <span>ao Matrícula Virtual</span> 
                            </div>
                        </div>
                        <div class="dashboard-boxes"> 
                            <div class="dashboard-box-wrapper">
                                <div class="dashboard-boxlink">
                                    <a href="dadosPessoais.jsp" class="box-link">
                                        <div class="box-link-ico">
                                            <div class="dados-icon">
                                                <i class="material-icons" style="font-size:48px;color:#6AC9BC">account_box</i>
                                            </div>
                                        </div>
                                        <span class="box-link-title">Dados Pessoais</span>
                                    </a>
                                    <div>

                                    </div>
                                </div>
                                <div class="dashboard-boxlink">
                                    <a href="cadastroMatricula.jsp" class="box-link">
                                        <div class="box-link-ico">
                                            <div class="matricula-icon">
                                                <i class="material-icons" style="font-size:48px;color:#7A54C6">school</i>
                                            </div>
                                        </div>    
                                        <span class="box-link-title">Matricula</span>
                                    </a>
                                </div>
                            </div> 
                            <div class="dashboard-box-under">
                                <div class="dashboard-boxlink">
                                    <a href="faleConosco.jsp" class="box-link">
                                        <div class="box-link-ico">
                                            <div class="speak-icon">
                                                <i class="material-icons" style="font-size:48px;color:#57BBE6">question_answer</i>
                                            </div>
                                        </div>     
                                        <span class="box-link-title">Fale Conosco</span>
                                    </a>
                                </div>
                                <div class="dashboard-boxlink">
                                    <a href="avaliaSatisfacao.jsp" class="box-link">
                                        <div class="box-link-ico">
                                            <div class="assessment-icon">
                                                <i class="material-icons" style="font-size:48px;color:#F86161">border_color</i>
                                            </div>
                                        </div>
                                        <span class="box-link-title">Avaliação de Satisfação</span> 
                                    </a>
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
        </div>     
    </body>   
</html>
