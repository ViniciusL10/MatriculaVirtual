<%-- 
    Document   : EXEMPLO
    Created on : Sep 29, 2021, 11:56:08 PM
    Author     : Vinicius
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="turno">
    <label for="turno">Turno *</label> 
    <select id="turno" name="turno" required="required">
    <option >-</option>
    <option value="matutino">Matutino</option>
    <option value="vespertino">Vespertino</option>
    <option value="noturno">Noturno</option>
</select> 
</div> 
<div class="line">
    <div class="ensino">
    <label for="ensino">Ensino *</label> 
        <select id="ensino" name="ensino" required="required">
            <option>-</option>
            <option value="fundamental">Fundamental</option>
            <option value="medio">Médio</option>
        </select> 
    </div>
    <div class="turma">
        <label for="turma">Turma *</label> 
        <select id="turma" name="turma" required="required">
            <option>-</option>
            <option value="1 Ano">1º ANO</option>
            <option value="2 Ano">2º ANO</option>
            <option value="3 Ano">3º ANO</option>
        </select> 
    </div>
</div>  