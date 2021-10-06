package DAO;

import Model.Aluno;
import Model.Escola;
import Util.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EscolaDAO {
    //                                          LISTAR
    public List<Escola> ListarEscola(String cnpj) {
        List<Escola> lista = new ArrayList<>();               
        // conectando no banco de dados
        Connection con = Conexao.Conectar();
        // comandos banco de dados
        String sql = "select escola from Escola where cnpj = ? ";
        
        try {
            PreparedStatement stm = con.prepareStatement(sql);
             stm.setString(1, cnpj);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()){
               Escola escola = new Escola();
                   escola.setEscola(rs.getString("escola"));                   
                   lista.add(escola);
            }
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
        return lista;
    }
    
    //                                          VALIDA LONGIN
    
    public boolean validarLogin (String cnpj, String senha){
    // Manda como parametro para ele duas variaveis para ele procurar no banco de dados!
            String sql = "select cnpj, senha from Escola where cnpj = ? and senha = ?";
            Connection con = Conexao.Conectar();
            
            try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, cnpj);
            stm.setString(2, senha);
            ResultSet rs = stm.executeQuery();
            return rs.next();

            
            } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
 
            return true;
    }
    
    //                                          CONSULTAR
    public List<Escola> consultarEscola(String cnpj) {
        
        List<Escola> lista = new ArrayList<>();  
        Escola escola = new Escola();
        // conectando no banco de dados
        Connection con = Conexao.Conectar();
        // comandos banco de dados
        String sql = "select * from Escola ";
               if (cnpj != "") {
                    sql += "where cnpj = ? ";
               }
                sql += "order by cnpj";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            if (cnpj != "") {
                    sql += "where cnpj = ?";
               }
            stm.setString(1, cnpj);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()){
                   Escola escola1 = new Escola();
                   escola1.setCnpj(rs.getString("cnpj"));
                   
                   lista.add(escola1);
            }
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
        return lista;
    }

    //                                          CADASTRAR
    public boolean cadastrarAluno(String cnpj, String cpf) {
        
        // comandos banco de dados
            String sql  = "INSERT INTO escolaaluno (cnpj, cpf) values (?, ?);";
        // conectando no banco de dados
        Connection con = Conexao.Conectar();
        Aluno aluno = new Aluno();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, cnpj);
            stm.setString(2, cpf);
            stm.execute();
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
          return false;
        }
        return true;
    }
    
    //                                          LISTAR ALUNOS POR ESCOLA
    public List<Aluno> ListarAlunosEscola(String cnpj) {
        List<Aluno> lista = new ArrayList<>();               
        // conectando no banco de dados
        Connection con = Conexao.Conectar();
        // comandos banco de dados
        String sql  = "select a.nome, a.cpf , a.fone, a.email, a.turma, a.turno from escola e , escolaaluno e2, aluno a ";
               sql += "where e2.cnpj = ? ";
               sql += "and e2.cpf  = a.cpf ";
               sql += "and e.cnpj  = e2.cnpj ";
               sql += "order by a.nome ";
        
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, cnpj);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()){
               Aluno aluno = new Aluno();
                   aluno.setNome(rs.getString("nome"));
                   aluno.setCpf (rs.getString("cpf"));
                   aluno.setFone(rs.getString("fone"));
                   aluno.setEmail(rs.getString("email"));
                   aluno.setTurma(rs.getString("turma"));
                   aluno.setTurno(rs.getString("turno"));
                   lista.add(aluno);
            }
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
        return lista;
    }
    
    
}