package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Util.Conexao;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Model.Aluno;

public class AlunoDAO {
    
    // MÉTODOS
    //                                          ADICIONAR
    public boolean AdicionarAluno(Aluno aluno) {
        
        // comandos banco de dados
            String sql  = "INSERT INTO Aluno ";
                   sql += "(nome, cpf, email, dataNascimento, sexo, rg, nomeResponsavel, senha, fone, cep, dataEfetivada, escola, ensino, turma, turno, numeroCasa, rua, bairro, cidade, estado) ";
                   sql += "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        // conectando no banco de dados
        Connection con = Conexao.Conectar();
        
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, aluno.getNome());
            stm.setString(2, aluno.getCpf());
            stm.setString(3, aluno.getEmail());
            stm.setDate  (4,   aluno.getDataNascimento());
            stm.setString(5, aluno.getSexo());
            stm.setString(6, aluno.getRg());
            stm.setString(7, aluno.getNomeResponsavel());
            stm.setString(8, aluno.getSenha());
            stm.setString(9, aluno.getFone());
            stm.setString(10, aluno.getCep());
            stm.setDate  (11, aluno.getDataEfetivada());
            stm.setString(12, aluno.getEscola());
            stm.setString(13, aluno.getEnsino());
            stm.setString(14, aluno.getTurma());
            stm.setString(15, aluno.getTurno());
            stm.setString(16, aluno.getNumeroCasa());
            stm.setString(17, aluno.getRua());
            stm.setString(18, aluno.getBairro());
            stm.setString(19, aluno.getCidade());
            stm.setString(20, aluno.getEstado());
            stm.execute();
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
          return false;
        }
        return true;
    }
    //                                          CONSULTAR
    public List<Aluno> consultarAluno(String cpf) {
        
        List<Aluno> lista = new ArrayList<>();  
        Aluno aluno = new Aluno();
        // conectando no banco de dados
        Connection con = Conexao.Conectar();
        // comandos banco de dados
        String sql = "select * from Aluno ";
               if (cpf != "") {
                    sql += "where cpf = ? ";
               }
                sql += "order by cpf";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            if (cpf != "") {
                    sql += "where cpf = ?";
               }
            stm.setString(1, cpf);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()){
                   Aluno aluno1 = new Aluno();
                   aluno1.setNome(rs.getString("nome"));
                   aluno1.setCpf(rs.getString("cpf"));
                   aluno1.setEmail(rs.getString("email"));
                   aluno1.setDataNascimento(rs.getDate("dataNascimento"));
                   aluno1.setSexo(rs.getString("sexo"));
                   aluno1.setRg(rs.getString("rg"));
                   aluno1.setNomeResponsavel(rs.getString("nomeResponsavel"));
                   aluno1.setSenha(rs.getString("senha"));
                   aluno1.setFone(rs.getString("fone"));
                   aluno1.setCep(rs.getString("cep"));
                   aluno1.setEstado(rs.getString("estado"));
                   aluno1.setDataEfetivada(rs.getDate("dataEfetivada"));
                   aluno1.setEscola(rs.getString("escola"));
                   aluno1.setEnsino(rs.getString("ensino"));
                   aluno1.setTurma(rs.getString("turma"));
                   aluno1.setTurno(rs.getString("turno"));
                   aluno1.setNumeroCasa(rs.getString("numeroCasa"));
                   aluno1.setRua(rs.getString("rua"));
                   aluno1.setBairro(rs.getString("bairro"));
                   aluno1.setCidade(rs.getString("cidade"));
                   lista.add(aluno1);
            }
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
        return lista;
    }
    //                                          ALTERAR
    public boolean AlterarAluno(Aluno aluno) {
        // comandos banco de dados
        String sql  = "UPDATE Aluno ";
                   sql += "set nome            = ? ,";                 
                   sql += "    email           = ? ,";
                   sql += "    dataNascimento  = ? ,";
                   sql += "    sexo            = ? ,";                   
                   sql += "    rg              = ? ,";
                   sql += "    nomeResponsavel = ? ,";
                   sql += "    senha           = ? ,";                   
                   sql += "    fone            = ? ,";
                   sql += "    cep             = ? ,";
                   sql += "    dataEfetivada   = ? ,";
                   sql += "    escola          = ? ,";
                   sql += "    ensino          = ? ,";
                   sql += "    turma           = ? ,";
                   sql += "    turno           = ? , ";
                   sql += "    numeroCasa      = ? , ";
                   sql += "    rua             = ? , ";
                   sql += "    bairro          = ? , ";
                   sql += "    cidade          = ? , ";
                   sql += "    estado          = ?  ";                  
                   sql += "    where cpf = ? ";
        // conectando no banco de dados
        Connection con = Conexao.Conectar();

        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, aluno.getNome());
            stm.setString(2, aluno.getEmail());
            stm.setDate  (3, aluno.getDataNascimento());
            stm.setString(4, aluno.getSexo());
            stm.setString(5, aluno.getRg());
            stm.setString(6, aluno.getNomeResponsavel());
            stm.setString(7, aluno.getSenha());
            stm.setString(8, aluno.getFone());
            stm.setString(9, aluno.getCep());
            stm.setDate  (10, aluno.getDataEfetivada());
            stm.setString(11, aluno.getEscola());
            stm.setString(12, aluno.getEnsino());
            stm.setString(13, aluno.getTurma());
            stm.setString(14, aluno.getTurno());
            stm.setString(15, aluno.getNumeroCasa());
            stm.setString(16, aluno.getRua());
            stm.setString(17, aluno.getBairro());
            stm.setString(18, aluno.getCidade());
            stm.setString(19, aluno.getEstado());
            stm.setString(20, aluno.getCpf());
            
            stm.execute();
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
          return false;
        }
        return true;
    }
    //                                          EXCLUIR
    public boolean excluirAluno(String cpf) {
        // comandos banco de dados
        String sql  = "DELETE FROM escolaaluno ";
               sql += "WHERE cpf = ? ";
        // conectando no banco de dados
        Connection con = Conexao.Conectar();
        
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, cpf);
            stm.execute();
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
          return false;
        }
        return true;
    }
    
    //                                          VALIDAR
    public boolean validarLogin (String cpf, String senha){
    // Manda como parametro para ele duas variaveis para ele procurar no banco de dados!
            String sql = "select cpf, senha from Aluno where cpf = ? and senha = ?";
            Connection con = Conexao.Conectar();
            
            try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, cpf);
            stm.setString(2, senha);
            ResultSet rs = stm.executeQuery();
            return rs.next();

            
            } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
 
            return true;
    }
        public boolean confirmarCpf (String cpf){
    // Manda como parametro para ele duas variaveis para ele procurar no banco de dados!
            String sql = "select cpf from Aluno where cpf = ?";
            Connection con = Conexao.Conectar();
            
            try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, cpf);
            ResultSet rs = stm.executeQuery();
            return rs.next();

            
            } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
        }
 
            return true;
    }
    
    //                                          ALTERAR SENHA
    public boolean AlterarSenha(String senha, String cpf) {
        
        // comandos banco de dados
            String sql  = "update aluno set senha = ? where cpf = ?";
        // conectando no banco de dados
        Connection con = Conexao.Conectar();

        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, senha); 
            stm.setString(2, cpf);
            stm.execute();
            
        } catch (SQLException ex) {
          System.out.println("Erro:" + ex.getMessage());
          return false;
        }
        return true;
    }

} // FINAL