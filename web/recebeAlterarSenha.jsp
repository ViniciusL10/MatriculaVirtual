<%-- 
    Document   : recebeAlterarSenha
    Created on : 20 de set. de 2021, 23:29:49
    Author     : orthm
--%>

<%@page import="Model.Aluno"%>
<%@page import="DAO.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String cpf = request.getParameter("cpf");
    String senha = request.getParameter("senha");
    String senha2 = request.getParameter("senha2");

    AlunoDAO alunoDAO = new AlunoDAO();
    if(alunoDAO.confirmarCpf(cpf) == true){
          
          if (alunoDAO.AlterarSenha(senha, cpf) == true && senha.equals(senha2)) {
           response.sendRedirect("loginAluno.jsp");
        }
        }
        else {
        response.sendRedirect("alterarSenha.jsp");  
    }

    
        
    


%>