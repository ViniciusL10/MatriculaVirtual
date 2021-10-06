package Model;

public class Escola {

    // VARIAVEIS
    private String cnpj;
    private String escola;
    private String senha;

    // GETTERS AND SETTERS

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getEscola() {
        return escola;
    }

    public void setEscola(String escola) {
        this.escola = escola;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    
    
    // TO STRING

    @Override
    public String toString() {
        return "Escola{" + "cnpj=" + cnpj + ", escola=" + escola + ", senha=" + senha + '}';
    }
    
    
    
    
}