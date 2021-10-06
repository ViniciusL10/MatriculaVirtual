<%-- 
    Document   : logar
    Created on : Jul 29, 2021, 11:13:22 PM
    Author     : Vinicius
--%>
<%@page  import="Model.Aluno"%>
<%@page  import="DAO.AlunoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String cpf = request.getParameter("cpf");
    String senha   = request.getParameter("senha");
    
    Aluno aluno = new Aluno();
    aluno.setCpf(cpf);
    aluno.setSenha(senha);
    
    AlunoDAO alunoDAO = new AlunoDAO();
    if(alunoDAO.validarLogin(cpf, senha) == true){
    request.getSession().setAttribute("usuario", cpf);
    response.sendRedirect("menu.jsp");
    }else{
        response.sendRedirect("loginAluno.jsp?msg=loginIncorreto");
    }
%>
    
