<%-- 
    Document   : logarEscola
    Created on : 14 de set. de 2021, 14:06:56
    Author     : eduardo.orthmann
--%>
<%@page  import="DAO.EscolaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String cnpj = request.getParameter("cnpj");
    String senha   = request.getParameter("senha");
    
    EscolaDAO escolaDAO = new EscolaDAO();
    if (escolaDAO.validarLogin(cnpj, senha) == true) {
        request.getSession().setAttribute("admin", cnpj);
        response.sendRedirect("indexEscola.jsp");
    } else {
        response.sendRedirect("loginEscola.jsp?msg=loginIncorreto");
    }
%>
    
