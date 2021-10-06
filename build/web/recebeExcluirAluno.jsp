<%-- 
    Document   : recebeExcluirAluno
    Created on : 23 de set. de 2021, 14:23:42
    Author     : eduardo.orthmann
--%>
<%@page  import="Model.Aluno"%>
<%@page  import="DAO.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String cpf = request.getParameter("cpf");
    AlunoDAO alunoDAO = new AlunoDAO();
    if (alunoDAO.excluirAluno(cpf)) {
            response.sendRedirect("indexEscola.jsp");
        }
        else {
        response.sendRedirect("indexEscola.jsp");
    }

%>