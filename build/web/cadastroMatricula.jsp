<%-- 
    Document   : cadastroMatricula
    Created on : 16 de ago. de 2021, 14:43:33
    Author     : vinicius.batista
--%>
<%@page import  = "Model.Aluno"%>
<%@page import  = "java.util.List"%>
<%@page import  = "DAO.AlunoDAO"%>
<%@page import  = "Model.Escola"%>
<%@page import  = "DAO.EscolaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="./favico.ico/logosite1.jpeg"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="./style/cadastroMatricula.css" rel="stylesheet">
        <script src="./Script/upload.js"></script>
        <title>Matrícula | Matrícula Virtual</title>
    </head>
    <style>
    .nav_tabs{
        height: 700px;
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
                                    <h1>Matrícula</h1>
                                </div>
                                <div>
                                    <div class="content">
                                        <h1>Preencha os seus dados</h1>
                                        <form action="alterarMatricula.jsp" method="post">
                                            <%@include file ="include/msg.jsp" %>
                                            <div class="box-cadastro">
                                                <div class="box">
                                                    <div class="line-one">
                                                        <div class="name">
                                                            <p>Nome Completo *</p>
                                                             <input id="nome" type="text" pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+$" value="<% out.write(aluno.getNome()); %>" name="nome" placeholder="Insira Nome Completo" required="required"> 
                                                        </div>
                                                        <div class="date">
                                                            <p>Data de Nascimento *</p>
                                                            <input id="nascimento" type="date" value="<% out.write(String.valueOf(aluno.getDataNascimento())); %>" name="dataNascimento" required="required">      
                                                        </div>
                                                        <div class="cpf">
                                                            <p>CPF *</p>
                                                            <input id="cpf" type="text" value="<% out.write(aluno.getCpf()); %>" name="cpf" placeholder="Insira CPF" required="required">  
                                                        </div>
                                                        <div class="rg">
                                                            <p>RG *</p>
                                                            <input id="rg" type="text" value="<% out.write(aluno.getRg()); %>" name="rg" placeholder="Insira RG" required="required">        
                                                        </div>
                                                    </div> 
                                                    <div class="line-one-one">
                                                        <div class="nameRes">
                                                            <p>Nome Responsável *</p>
                                                            <input id="resp" type="text" pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+$" value="<% out.write(aluno.getNomeResponsavel()); %>" name="nomeResponsavel" placeholder="Nome Responsável" required="required">   
                                                        </div>
                                                        <div class="phone">
                                                            <p>Telefone/Celular *</p>
                                                            <input id="phone" type="text" value="<% out.write(aluno.getFone()); %>" name="fone" placeholder="Telefone/Celular" required="required">
                                                        </div>
                                                        <div class="sexo">
                                                            <p>Sexo *</p>
                                                            <input id="sexo" type="text" value="<% out.write(aluno.getSexo()); %>" name="sexo" placeholder="Insira seu sexo" required="required">
                                                        </div>
                                                    </div>    
                                                    <div class="email">
                                                        <p>E-mail *</p>
                                                        <input id="email" type="email" value="<% out.write(aluno.getEmail()); %>" name="email" placeholder="Insira seu Email" required="required">
                                                    </div>
                                                    <div class="line-two">
                                                        <div class="cep">
                                                            <p>CEP *</p>
                                                            <input id="cep" type="text" value="<% out.write(aluno.getCep()); %>" name="cep" placeholder="Insira seu CEP" required="required">
                                                        </div>
                                                        <div class="rua">
                                                            <p>Rua *</p>
                                                            <input id="rua" type="text" value="<% out.write(aluno.getRua()); %>" name="rua" placeholder="Insira sua rua" required="required">
                                                        </div>
                                                        <div class="cidade">
                                                            <p>Cidade *</p>
                                                            <input id="cidade" type="text" value="<% out.write(aluno.getCidade()); %>" name="cidade" placeholder="Insira sua cidade" required="required"> 
                                                        </div>
                                                        <div class="numeroCasa">
                                                            <p>Numero da Casa *</p>
                                                            <input id="numeroCasa"  type="text" value= "<% out.write(aluno.getNumeroCasa()); %>" name="numeroCasa" placeholder="Insira o número da sua casa" required="required">
                                                        </div>                                                                            
                                                    </div>
                                                    <div class="line-three">
                                                        <div class="bairro">
                                                            <p>Bairro *</p>
                                                            <input id="bairro" type="text" value="<% out.write(aluno.getBairro()); %>" name="bairro" placeholder="Insira seu bairro" required="required">      
                                                        </div>
                                                        <div class="estado">
                                                            <p>Estado *</p>
                                                            <input id="estado" type="text" value="<% out.write(aluno.getEstado()); %>" name="estado" placeholder="Insira seu estado" required="required">                                                                                      
                                                        </div>                                                                        
                                                    </div>
                                                    <div class="alterarSenha">
                                                        <p>Alterar Senha</p>
                                                        <input id="senha" type="password"  value="<% out.write(aluno.getSenha()); %>" name="senha" placeholder="Insira sua Senha" required="required">                                                                                      
                                                    </div>   
                                                </div> 
                                                <h1>Cadastro Curricular</h1> 
                                                <div class="box-cadastro">
                                                <div class="box">
                                                    <div class="line-one">
                                                        <div class="escola">
                                                            <label for="escola">Escola *</label>
                                                            <div class="select">
                                                                <select id="escola" name="escola" required="required">
                                                                    <option>-</option>
                                                                    <option  value="999.999.999-99">Hercilio Deeke</option>
                                                                    <option  value="888.888.888-88">Adolpho Konder</option>
                                                                    <option  value="777.777.777-77">Machado de Assis</option>
                                                                    <option  value="666.666.666-66">Sagrada Familia</option>
                                                                    <option  value="555.555.555-55">Santos Dummond</option>
                                                                </select> 
                                                            </div>
                                                            <div class="turno">
                                                                <label for="turno">Turno *</label>
                                                                <div class="select">
                                                                    <select id="turno" name="turno" required="required">
                                                                        <option >-</option>
                                                                        <option value="matutino">Matutino</option>
                                                                        <option value="vespertino">Vespertino</option>
                                                                        <option value="noturno">Noturno</option>
                                                                    </select> 
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="line">
                                                        <div class="ensino">
                                                            <label for="ensino">Ensino *</label>
                                                            <div class="select">
                                                                <select id="ensino" name="ensino" required="required">
                                                                    <option>-</option>
                                                                    <option value="fundamental">Fundamental</option>
                                                                    <option value="medio">Médio</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="turma">
                                                            <label for="turma">Turma *</label>
                                                            <div class="select">
                                                                <select id="turma" name="turma" required="required">
                                                                    <option>-</option>
                                                                    <option value="1 Ano">1º ANO</option>
                                                                    <option value="2 Ano">2º ANO</option>
                                                                    <option value="3 Ano">3º ANO</option>
                                                                </select>
                                                            </div>    
                                                        </div>
                                                    </div>
                                                    </div>
                                                      <% } %>  
                                                    <div class="salva">
                                                        <input type="submit" name="salvar" value="Salvar">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>          
                                        <div>
                                            <h1>Selecione seus Documentos</h1>
                                            <ol>
                                                <li>Cópia legível e autenticada da Carteira de Identidade/RG;</li>
                                                <li>Cópia legível e autenticada do CPF (CIC);</li>
                                                <li>Cópia legível e autenticada da Certidão de Nascimento;</li>
                                                <li>Comprovante de endereço recente;</li>
                                                <li>Cópia do CPF do pai, mãe ou responsável, no caso de candidatos menores de 18 anos;</li>                                                
                                            </ol>
                                            <p class="aviso">* Enviar todos os documentos anexados em apenas UM PDF;</p>
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
                                            <div class="btn-document">
                                                <button type="button" class="document" onclick="showModal()">Selecionar Documentos</button> 
                                            </div>
                                            <div class="modal" id="modal">
                                                <div class="modal-content">
                                                    <span class="close-button" onclick="closeModal()">
                                                        &times;
                                                    </span>                                                    
                                                    <h1>Selecionar Documentos</h1>
                                                    <form action="ServletUpload" method="post" enctype="multipart/form-data">
                                                        <% 
                                                        String cpf1 = (String) session.getAttribute("usuario");
                                                        List<Aluno> lista1 = alunoDAO.consultarAluno(cpf1);
                                                        for (Aluno aluno: lista1) {
                                                        %> 
                                                        <div class="upload">
                                                            <input type="hidden" name="cpf" value="<% out.write(aluno.getCpf()); %>">
                                                            <% } %>
                                                            <input class="file" type="file" name="arquivoUpload" size="30" />
                                                            <br /> 
                                                            <input class="enviar" type="submit" value="Enviar" />
                                                        </div>
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
        <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
        <script type="text/javascript" src="js/jquery.mask.js"></script>
        <script>
            $(document).ready(function(){
                $('#cep').mask('00000-000');
                $('#cpf').mask('000.000.000-00');
                $('#phone').mask('(00)00000-0000');
                $('#rg').mask('0.000.000');
            });
        </script>
    </body>
</html>
