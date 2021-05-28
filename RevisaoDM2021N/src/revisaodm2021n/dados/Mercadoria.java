
package revisaodm2021n.dados;

public class Mercadoria {
    int id;
    String nome;
    String data_compra;
    String validade;
    String marca;
    String id_restaurante;
    String id_fornecedor;

    public Mercadoria(int id) {
        this.id = id;
    }

    public Mercadoria(String nome) {
        this.nome = nome;
    }

    public Mercadoria(String nome, String data_compra, String validade, String marca, String id_restaurante, String id_fornecedor) {
        this.nome = nome;
        this.data_compra = data_compra;
        this.validade = validade;
        this.marca = marca;
        this.id_restaurante = id_restaurante;
        this.id_fornecedor = id_fornecedor;
    }

    public Mercadoria(int id, String nome, String data_compra, String validade, String marca, String id_restaurante, String id_fornecedor) {
        this.id = id;
        this.nome = nome;
        this.data_compra = data_compra;
        this.validade = validade;
        this.marca = marca;
        this.id_restaurante = id_restaurante;
        this.id_fornecedor = id_fornecedor;
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

    public String getData_compra() {
        return data_compra;
    }

    public void setData_compra(String data_compra) {
        this.data_compra = data_compra;
    }

    public String getValidade() {
        return validade;
    }

    public void setValidade(String validade) {
        this.validade = validade;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getId_restaurante() {
        return id_restaurante;
    }

    public void setId_restaurante(String id_restaurante) {
        this.id_restaurante = id_restaurante;
    }

    public String getId_fornecedor() {
        return id_fornecedor;
    }

    public void setId_fornecedor(String id_fornecedor) {
        this.id_fornecedor = id_fornecedor;
    }

    @Override
    public String toString() {
        return "Mercadoria{" + "id=" + id + ", nome=" + nome + ", data_compra=" + data_compra + ", validade=" + validade + ", marca=" + marca + ", id_restaurante=" + id_restaurante + ", id_fornecedor=" + id_fornecedor + '}';
    }
    
    

}