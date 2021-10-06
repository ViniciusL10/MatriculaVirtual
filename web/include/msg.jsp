<%-- 
    Document   : newjsp
    Created on : Sep 15, 2021, 11:34:57 AM
    Author     : Vinicius
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

if(request.getParameter("msg") != null){
	
	//Obter a mensagem
			String msg = request.getParameter("msg");
			
			//Exibir a mensagem
			switch(msg){
				case "loginIncorreto":
					out.print("<div class='msg'>* Usuário ou senha incorretos.</div>");
				break;
                                
                                case "salvoSucesso":
					out.print("<div class='msg'>* Salvo com sucesso</div>");
                                        out.print("<div class='msg'>* Não esquecer de enviar Documentos!</div>");
				break;
                                
                                case "faleConosco":
					out.print("<div class='msg'>* Enviado com sucesso</div>");
                                        
				break;
				
				case "cpfInvalido":
					out.print("<div class='alert alert-danger msg'>CPF não encontrado.</div>");
				break;
	
				case "enderecoAlterado":
					out.print("<div class='alert alert-success msg'>Endereço alterado com sucesso</div>");
				break;
				
				case "erroEnderecoAlterado":
					out.print("<div class='alert alert-danger msg'>Dados inválidos, favor preencher corretamente.</div>");
				break;
			
				case "loginAlterado":
					out.print("<div class='alert alert-success msg'>Senha alterada com sucesso</div>");
				break;
			
			}
	
}




%>
