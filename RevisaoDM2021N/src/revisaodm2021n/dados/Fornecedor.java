
package revisaodm2021n.dados;

public class Fornecedor {
    int id;
    String nome;
    String cep;
    String endereco;
    String bairro;
    String telefone;

    public Fornecedor(int id) {
        this.id = id;
    }

    public Fornecedor(String nome) {
        this.nome = nome;
    }

    public Fornecedor(String nome, String cep, String endereco, String bairro, String telefone) {
        this.nome = nome;
        this.cep = cep;
        this.endereco = endereco;
        this.bairro = bairro;
        this.telefone = telefone;
    }

    public Fornecedor(int id, String nome, String cep, String endereco, String bairro, String telefone) {
        this.id = id;
        this.nome = nome;
        this.cep = cep;
        this.endereco = endereco;
        this.bairro = bairro;
        this.telefone = telefone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    @Override
    public String toString() {
        return "Fornecedor{" + "id=" + id + ", nome=" + nome + ", cep=" + cep + ", endereco=" + endereco + ", bairro=" + bairro + ", telefone=" + telefone + '}';
    }
    
    

}