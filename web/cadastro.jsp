<%-- 
    Document   : cadastro
    Created on : Aug 8, 2021, 5:03:53 PM
    Author     : Vinicius
--%>

<%@page  import = "Model.Aluno"%>
<%@page  import = "Util.Email"%>
<%@page  import = "DAO.AlunoDAO"%>
<%@page import  = "java.sql.Date"%>
<%@page import  = "java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
    Aluno aluno = new Aluno();
    
    String nome = (request.getParameter("nome"));
    String cpf = (request.getParameter("cpf"));
    String email = (request.getParameter("email"));
    String dataNascimento = (request.getParameter("dataNascimento"));
    String sexo = (request.getParameter("sexo"));
    String rg = (request.getParameter("rg"));
    String nomeResponsavel = (request.getParameter("nomeResponsavel"));
    String senha = (request.getParameter("senha"));
    
    String senha2 = (request.getParameter("confirmaSenha"));
    
    String fone = (request.getParameter("fone"));
    String cep = (request.getParameter("cep"));
    String rua = (request.getParameter("rua"));
    String numeroCasa = (request.getParameter("numeroCasa"));
    String bairro = (request.getParameter("bairro"));
    String cidade = (request.getParameter("cidade"));
    String estado = (request.getParameter("estado"));
    
    aluno.setNome(nome);
    aluno.setCpf(cpf);
    aluno.setEmail(email);
    aluno.setDataNascimento(Date.valueOf(dataNascimento));
    aluno.setSexo(sexo);
    aluno.setRg(rg);
    aluno.setNomeResponsavel(nomeResponsavel);
    aluno.setSenha(senha);
    aluno.setFone(fone);
    aluno.setCep(cep);
    aluno.setRua(rua);
    aluno.setNumeroCasa(numeroCasa);
    aluno.setBairro(bairro);
    aluno.setCidade(cidade);
    aluno.setEstado(estado);
    
    AlunoDAO alunoDAO = new AlunoDAO();
    if(alunoDAO.AdicionarAluno(aluno) == true && senha.equals(senha2)){
    Email email1 = new Email();
    email1.enviarEmail(email);
    
    response.sendRedirect("menu.jsp");
    request.getSession().setAttribute("usuario", cpf);
    } else {
        response.sendRedirect("cadastrar.jsp?msg=loginIncorreto");
    }
    
%>