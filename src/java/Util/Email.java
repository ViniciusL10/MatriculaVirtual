package Util;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {
 
    public boolean enviarEmail(String email) throws AddressException, MessagingException {
  
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.socketFactory.port", "465");
        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.port", "465");
        
        Session session = Session.getInstance(prop, new Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication("acessiveleducacao@gmail.com", "Edu2021aces#");
        }});
        
         try {
          MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("acessiveleducacao@gmail.com"));
            message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(email));

            message.setSubject("Cadastro");
            message.setContent("<html>\n" +
                                "    <head>\n" +
                                "        <style>\n" +
                                "        h2 {text-align: center;}\n" +
                                "        </style>\n" +
                                "    </head>\n" +
                                "    <body>\n" +
                                "        <h2> Sua conta foi cadastrada com sucesso!! </h2>\n" +
                                "    </body>\n" +
                                " </html>", "text/html; charset=utf-8");

            //send message  
            Transport.send(message);  
        } catch (MessagingException e) {
            e.printStackTrace();
            return false;
        }
            return true;       
    }
    
        public boolean enviarDuvida(String email, String msg) throws AddressException, MessagingException {
  
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.socketFactory.port", "465");
        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.port", "465");
        
        Session session = Session.getInstance(prop, new Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication("acessiveleducacao@gmail.com", "Edu2021aces#");
        }});
        
         try {
          MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("acessiveleducacao@gmail.com"));
            message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(email));

            message.setSubject("Dúvida");
            message.setContent(msg, "text/html; charset=utf-8");

            //send message  
            Transport.send(message);  
        } catch (MessagingException e) {
            e.printStackTrace();
            return false;
        }
            return true;       
    }

}
