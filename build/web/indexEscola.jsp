<%-- 
    Document   : indexEscola
    Created on : 14 de set. de 2021, 14:17:50
    Author     : eduardo.orthmann
--%>
<%@page import  = "Model.Aluno"%>
<%@page import  = "java.util.List"%>
<%@page import  = "DAO.AlunoDAO"%>
<%@page import  = "Model.Escola"%>
<%@page import  = "DAO.EscolaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Home | Matrícula Virtual</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Venha facilitar sua matricula escolar!">
        <meta name="keywords" content="html5, tecnologia">
        <link rel="stylesheet" href="./style/indexEscola.css">
        <link rel="shortcut icon" type="image/x-icon" href="./favico.ico/logosite1.jpeg"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        
    </head>    
    <body>
        <%
          //verifica sessão - se usuário não está logado, abre a tela de login
          String usuario = (String) session.getAttribute("admin");
          if(usuario == null){
              response.sendRedirect("index.html");
          }
          %>
        <div class="geral">
            <header>                  
                <div class="cabecalho">
                    <div class="cabecalho-solid">
                        <% 
                        String cnpj = (String) session.getAttribute("admin");
                        EscolaDAO escolaDAO = new EscolaDAO();
                        Escola e = new Escola();
                        List<Escola> lista = escolaDAO.ListarEscola(cnpj);
                        for (Escola escola: lista) {
                        %>
                        <div class="logo">
                            <img class="logotipo" src="./Imagem/logosite1.jpeg" alt="Logotipo Matricula Virtual">                        
                            <h1>Matrícula Virtual</h1>
                        </div>
                        <div class="iconMaterial">
                            <i class="material-icons" style="font-size:25px;color:orange;">account_box</i>
                            <h3> <% out.write(escola.getEscola()); %> </h3>
                            <% } %>
                            <i class="material-icons" style="font-size:15px;color:orange">exit_to_app</i><a href="loginEscola.jsp" data-toggle="modal" data-target="#myModal">Sair</a>
                        </div>    
                    </div> 
                </div>                      
            </header>
            <div class="title-welcome">
                <div class="title-welcome-externo">
                    <h1>Seja Bem-vindo</h1>
                    <span>ao Matrícula Virtual</span> 
                </div>
            </div>
            <div class="table">
                <table>
                    <thead>                                            
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>Fone</th>
                        <th>Email</th>
                        <th>Turma</th>
                        <th>Turno</th>
                        <th></th>
                        <th></th>                                                                                        
                    </thead>
                    <tbody>                                          
                        <%                                             
                        Aluno a = new Aluno();
                        List<Aluno> lista1 = escolaDAO.ListarAlunosEscola(cnpj);
                        for (Aluno aluno: lista1) {
                        %>
                        <form action="recebeExcluirAluno.jsp">
                            <input type="hidden" name="cpf" value="<% out.write(aluno.getCpf()); %>">
                            <tr>
                                <td><% out.write(aluno.getNome()); %></td>
                                <td><% out.write(aluno.getCpf()); %> </td>
                                <td><% out.write(aluno.getFone()); %></td>
                                <td><% out.write(aluno.getEmail()); %></td>
                                <td><% out.write(aluno.getTurma()); %></td>
                                <td><% out.write(aluno.getTurno()); %></td>  
                                <td> <a href="upload/<% out.write(aluno.getCpf()); %>.pdf">Documento</a> </td>
                                <td> <button class="button-table" type="submit"><p>Excluir</p></button></td>
                            </tr>
                        </form>
                        <% } %>   
                    </tbody>      
                </table>
            </div>        
            </div>         
    </body>   
</html>