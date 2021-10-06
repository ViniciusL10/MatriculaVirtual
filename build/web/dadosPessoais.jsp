<%-- 
    Document   : dadosPessoais
    Created on : 9 de ago. de 2021, 16:24:50
    Author     : vinicius.batista
--%>
<%@page import  = "Model.Aluno"%>
<%@page import  = "java.util.List"%>
<%@page import  = "DAO.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="./favico.ico/logosite1.jpeg"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="./style/dadosPessoais.css" rel="stylesheet">
        <title>Dados Pessoais | Matrícula Virtual</title>
    </head>
    <style>
    .nav_tabs{
        height: 300px;
        background-color: #fff;
        position: relative;
    }

    .nav_tabs ul{
        list-style: none;
    }

    .nav_tabs ul li{
        float: left;
    }

    .tab_label{
        display: block;
        background-color: #F2F2F2;
        padding: 20px;
        color: black;
        cursor: pointer;
        text-align: center;
    }

    .nav_tabs .rd_tab { 
        display:none;
        position: absolute;
    }

    .nav_tabs .rd_tab:checked ~ label { 
	background-color: #03989E;
	color:#fff;
    }

    .tab-content{
        border-top: solid 5px #03989E;
        background-color: #fff;
        display: none;
        position: absolute;
        height: 320px;
        width: 600px;
        left: 0;	
    }

    .rd_tab:checked ~ .tab-content{
	display: block;
    }
    
    .tab-content h2{
	padding: 10px;
	color: #87d3b7;
    }
    
    .tab-content article{
	padding: 10px;
	color: #555;
    }
    </style>
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
                                    <h1>Dados Pessoais</h1>
                                </div>
                                <div>
                                    <nav class="nav_tabs">
                                        <ul>
                                            <li>
                                                <input type="radio" id="infoP" class="rd_tab" name="tabs" checked>
                                                <label for="infoP" class="tab_label">Informações Pessoais</label>
                                                <div class="tab-content">
                                                    <article>
                                                        <div class="info">
                                                            <div class="information">
                                                                <label>Nome</label>
                                                                <div>
                                                                    <input class="input" value="<% out.write(aluno.getNome()); %>" disabled="disabled"> 
                                                                </div>
                                                            </div>
                                                             
                                                            <div class="information">
                                                                <label>CPF</label>
                                                                <div>
                                                                    <input class="input" value="<% out.write(aluno.getCpf()); %>" disabled="disabled"> 
                                                                </div>
                                                            </div>
                                                            <div class="information">
                                                                <label>RG</label>
                                                                <div>
                                                                    <input class="input" value="<% out.write(aluno.getRg()); %>" disabled="disabled"> 
                                                                </div>
                                                            </div>
                                                            <div class="information">
                                                                <label>Nascimento</label>
                                                                <div>
                                                                    <input class="input" type="date" value="<% out.write(String.valueOf(aluno.getDataNascimento())); %>" disabled="disabled"> 
                                                                </div>
                                                            </div>  
                                                        </div>  
                                                    </article>
                                                </div>
                                            </li>
                                            <li>
                                                <input type="radio" name="tabs" class="rd_tab" id="contato">
                                                <label for="contato" class="tab_label">Contato</label>
                                                <div class="tab-content">
                                                    <article>
                                                        <div class="information">
                                                            <label>E-mail</label>
                                                            <div>
                                                                <input class="input" value="<% out.write(aluno.getEmail()); %>" disabled="disabled"> 
                                                            </div>
                                                        </div>
                                                        <div class="information">
                                                            <label>Telefone</label>
                                                            <div>
                                                                <input class="input" value="<% out.write(aluno.getFone()); %>" disabled="disabled"> 
                                                            </div>
                                                        </div>    
                                                    </article>
                                                </div>
                                            </li>
                                            <li>
                                                <input type="radio" name="tabs" class="rd_tab" id="endereco">
                                                <label for="endereco" class="tab_label">Endereço</label>
                                                <div class="tab-content">
                                                    <article>
                                                        <div class="information">
                                                            <label>Endereço</label>
                                                            <div>
                                                                <input class="input" value="<% out.write(aluno.getRua()); %>" disabled="disabled"> 
                                                            </div>
                                                        </div>
                                                        <div class="information">
                                                            <label>Número</label>
                                                            <div>
                                                                <input class="input" value="<% out.write(aluno.getNumeroCasa()); %>" disabled="disabled"> 
                                                            </div>
                                                        </div>
                                                        <div class="information">
                                                            <label>CEP</label>
                                                            <div>
                                                                <input class="input" value="<% out.write(aluno.getCep()); %>" disabled="disabled"> 
                                                            </div>
                                                        </div>
                                                        <div class="information">
                                                            <label>Estado</label>
                                                            <div>
                                                                <input class="input" value="<% out.write(aluno.getFone()); %>" disabled="disabled"> 
                                                            </div>
                                                        </div>  
                                                        <div class="information">
                                                            <label>Cidade</label>
                                                            <div>
                                                                <input class="input" value="<% out.write(aluno.getCidade()); %>" disabled="disabled"> 
                                                            </div>
                                                        </div>
                                                        <div class="information">
                                                            <label>Bairro</label>
                                                            <div>
                                                                <input class="input" value="<% out.write(aluno.getBairro()); %>" disabled="disabled"> 
                                                            </div>
                                                        </div>
                                                    </article>
                                                </div>  
                                            </li>
                                            <%}%>
                                        </ul>
                                    </nav>                              
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
    </body>
</html>