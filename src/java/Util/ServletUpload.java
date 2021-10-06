package Util;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/ServletUpload") // configura a url do servlet
@MultipartConfig // indica que o formulário é multipart
public class ServletUpload extends HttpServlet {

        // metodo chamado quando é acessada a url do servlet
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException 
	{
		Part filePart;
		String cpf = request.getParameter("cpf");
	    // obtendo o arquivo, semelhante ao getParameter
	    filePart = request.getPart("arquivoUpload"); 
            
                // obtendo informações do arquivo
		System.out.println(filePart.getContentType());
		System.out.println(filePart.getName());
		System.out.println(filePart.getSize());
		System.out.println(filePart.getSubmittedFileName());
		System.out.println(filePart.getInputStream());
                
                // salvando no computador
	        String nome = cpf + ".pdf";
		String dirNome = "C:\\Users\\orthm\\Documents\\Projetos\\MatriculaVirtualWeb\\web\\upload\\";
		filePart.write(dirNome + nome);
                
                response.sendRedirect("cadastroMatricula.jsp");
	}
        protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException 
	{
         
    
        }
}
