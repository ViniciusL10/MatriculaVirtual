package Model;

import java.sql.Date;

public class Aluno {
    
    // VARIAVEIS
    private String nome;
    private String cpf;
    private String email;
    private Date   dataNascimento;
    private String sexo;
    private String rg;
    private String senha;
    private String nomeResponsavel;
    private String fone;
    private String cep;
    private Date   dataEfetivada;
    private String escola;
    private String ensino;
    private String turma;
    private String turno;  
    private String numeroCasa;
    private String rua;
    private String bairro;
    private String cidade;
    private String estado;

    public Aluno() {}
    
    // CONSTRUTOR
    public Aluno(String nome, String cpf, String email, Date dataNascimento, String sexo, String rg, String senha, String nomeResponsavel, String fone, String cep, Date dataEfetivada, String escola, String ensino, String turma, String turno, String numeroCasa, String rua, String bairro, String cidade, String estado) {
        this.nome = nome;
        this.cpf = cpf;
        this.email = email;
        this.dataNascimento = dataNascimento;
        this.sexo = sexo;
        this.rg = rg;
        this.senha = senha;
        this.nomeResponsavel = nomeResponsavel;
        this.fone = fone;
        this.cep = cep;
        this.dataEfetivada = dataEfetivada;
        this.escola = escola;
        this.ensino = ensino;
        this.turma = turma;
        this.turno = turno;
        this.numeroCasa = numeroCasa;
        this.rua = rua;
        this.bairro = bairro;
        this.cidade = cidade;
        this.estado = estado;
    }
        
    // GETTERS AND SETTERS

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getNomeResponsavel() {
        return nomeResponsavel;
    }

    public void setNomeResponsavel(String nomeResponsavel) {
        this.nomeResponsavel = nomeResponsavel;
    }

    public String getFone() {
        return fone;
    }

    public void setFone(String fone) {
        this.fone = fone;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public Date getDataEfetivada() {
        return dataEfetivada;
    }

    public void setDataEfetivada(Date dataEfetivada) {
        this.dataEfetivada = dataEfetivada;
    }

    public String getEscola() {
        return escola;
    }

    public void setEscola(String escola) {
        this.escola = escola;
    }

    public String getEnsino() {
        return ensino;
    }

    public void setEnsino(String ensino) {
        this.ensino = ensino;
    }

    public String getTurma() {
        return turma;
    }

    public void setTurma(String turma) {
        this.turma = turma;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public String getNumeroCasa() {
        return numeroCasa;
    }

    public void setNumeroCasa(String numeroCasa) {
        this.numeroCasa = numeroCasa;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    } 

    // TOSTRING

    @Override
    public String toString() {
        return "Aluno{" + "nome=" + nome + ", cpf=" + cpf + ", email=" + email + ", dataNascimento=" + dataNascimento + ", sexo=" + sexo + ", rg=" + rg + ", senha=" + senha + ", nomeResponsavel=" + nomeResponsavel + ", fone=" + fone + ", cep=" + cep + ", dataEfetivada=" + dataEfetivada + ", escola=" + escola + ", ensino=" + ensino + ", turma=" + turma + ", turno=" + turno + ", numeroCasa=" + numeroCasa + ", rua=" + rua + ", bairro=" + bairro + ", cidade=" + cidade + ", estado=" + estado + '}';
    }

} // FINAL
