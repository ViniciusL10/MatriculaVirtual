<%-- 
    Document   : alterarMatricula
    Created on : 23 de ago. de 2021, 19:55:44
    Author     : orthm
--%>
<%@page  import = "Model.Aluno"%>
<%@page  import = "DAO.AlunoDAO"%>
<%@page import  = "java.sql.Date"%>
<%@page import  = "DAO.EscolaDAO"%>
<%@page import  = "java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
    Aluno aluno = new Aluno();
    
    String nome = (request.getParameter("nome"));
    String dataNascimento = (request.getParameter("dataNascimento"));
    String cpf = (request.getParameter("cpf"));
    String rg = (request.getParameter("rg"));
    String nomeResponsavel = (request.getParameter("nomeResponsavel"));
    String fone = (request.getParameter("fone"));
    String senha = (request.getParameter("senha"));
    String sexo = (request.getParameter("sexo"));
    String email = (request.getParameter("email"));
    String cep = (request.getParameter("cep"));
    String rua = (request.getParameter("rua"));
    String numeroCasa = (request.getParameter("numeroCasa"));
    String bairro = (request.getParameter("bairro")); 
    String cidade = (request.getParameter("cidade"));
    String estado = (request.getParameter("estado"));
    String escola = (request.getParameter("escola"));
    String ensino = (request.getParameter("ensino"));
    String turma = (request.getParameter("turma"));
    String turno = (request.getParameter("turno"));
    
    AlunoDAO alunoDAO = new AlunoDAO();
    EscolaDAO escolaDAO = new EscolaDAO();
    if (escola.isEmpty() || ensino.isEmpty() || turno.isEmpty() || turma.isEmpty()) {
        response.sendRedirect("cadastroMatricula.jsp");
        request.getSession().setAttribute("usuario", cpf);
        
    }
    else {
        aluno.setNome(nome);
        aluno.setDataNascimento(Date.valueOf(dataNascimento));
        aluno.setCpf(cpf);
        aluno.setRg(rg);
        aluno.setNomeResponsavel(nomeResponsavel);
        aluno.setSenha(senha);
        aluno.setSexo(sexo);
        aluno.setEmail(email);
        aluno.setFone(fone);
        aluno.setFone(fone);
        aluno.setCep(cep);
        aluno.setRua(rua);
        aluno.setNumeroCasa(numeroCasa);
        aluno.setBairro(bairro);
        aluno.setCidade(cidade);
        aluno.setEstado(estado);
        aluno.setDataEfetivada(Date.valueOf(LocalDate.now()));
        aluno.setEscola(escola);
        aluno.setEnsino(ensino);
        aluno.setTurma(turma);
        aluno.setTurno(turno);
    
        alunoDAO.AlterarAluno(aluno);
        escolaDAO.cadastrarAluno(escola, cpf);
        response.sendRedirect("cadastroMatricula.jsp");
        request.getSession().setAttribute("usuario", cpf);
        
    }
    
%>