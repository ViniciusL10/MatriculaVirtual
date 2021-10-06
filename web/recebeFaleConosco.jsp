<%-- 
    Document   : recebeFaleConosco
    Created on : 7 de set. de 2021, 15:08:07
    Author     : orthm
--%>
<%@page  import = "Util.Email"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%      
    String duvida = (request.getParameter("duvida"));
    String email = (request.getParameter("email"));
    String cpf = (request.getParameter("cpf"));

    Email email1 = new Email();
    if (email1.enviarDuvida(email, duvida) == true) {
    response.sendRedirect("faleConosco.jsp?msg=faleConosco");
    request.getSession().setAttribute("usuario", cpf);
    
    }else{
        response.sendRedirect("faleConosco.jsp");
        request.getSession().setAttribute("usuario", cpf);
    }    
        


    %>