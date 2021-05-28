package revisaodm2021n.modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import revisaodm2021n.dados.Fornecedor;
import revisaodm2021n.util.ConexaoDb;

public class DaoFornecedor {
   
    // variavel que armazena a conexão
    private final Connection c;
   
    // construtof da classe DaoUsuario
    public DaoFornecedor() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDb().getConnection();
    }
   
    public Fornecedor buscar (Fornecedor f) throws SQLException {
        String sql = "select * from fornecedor_fornecedor WHERE fornecedor_id = ?";
        Fornecedor retorno;
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1,f.getId());
            // executa
            ResultSet fornecedor = stmt.executeQuery();
            retorno = null;
            while (fornecedor.next()) {
                // criando o objeto Usuario
                retorno = new Fornecedor(
                        fornecedor.getInt(1),
                        fornecedor.getString(2),
                        fornecedor.getString(3),
                        fornecedor.getString(4),
                        fornecedor.getString(5),
                        fornecedor.getString(6));
                // adiciona o usu à lista de pessoa
            }
        }
        c.close();
        return retorno;
    }

    public Fornecedor inserir (Fornecedor f) throws SQLException {
        String sql = "insert into fornecedor_fornecedor" + " (fornecedor_nome, fornecedor_cep, fornecedor_endereco, fornecedor_bairro, fornecedor_telefone)" + " values (?,?,?,?,?)";
   
        // seta os valores
        try ( // prepared statement para inserção
            PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS)) {
            // seta os valores
            stmt.setString(1,f.getNome());
            stmt.setString(2,f.getCep());
            stmt.setString(3,f.getEndereco());
            stmt.setString(4,f.getBairro());
            stmt.setString(5,f.getTelefone());
            // executa
            stmt.executeUpdate();
            ResultSet fornecedor = stmt.getGeneratedKeys();
            if (fornecedor.next()) {
                int id = fornecedor.getInt(1);
                f.setId(id);
            }
        }
        c.close();
        return f;
    }

    public Fornecedor alterar (Fornecedor f) throws SQLException {
        String sql = "UPDATE fornecedor_fornecedor SET fornecedor_nome = ?, fornecedor_cep = ?, fornecedor_endereco = ?, fornecedor_bairro = ?, fornecedor_telefone = ? WHERE fornecedor_id = ?";
        // seta os valores
        // prepared statement para inserção
        try (PreparedStatement stmt = c.prepareStatement(sql)) {
            // seta os valores
            stmt.setString(1,f.getNome());
            stmt.setString(2,f.getCep());
            stmt.setString(3,f.getEndereco());
            stmt.setString(4,f.getBairro());
            stmt.setString(5,f.getTelefone());
            stmt.setInt(6,f.getId());
            
            // executa
            stmt.execute();
        }
        return f;

    }

    public Fornecedor excluir (Fornecedor f) throws SQLException {
         String sql = "delete from fornecedor_fornecedor WHERE fornecedor_id = ?";
        // seta os valores
        // prepared statement para inserção
        try (PreparedStatement stmt = c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1,f.getId());
            // executa
            stmt.execute();
        }
        c.close();
        return f;
    }

    public List<Fornecedor> listar (Fornecedor f) throws SQLException {
         // usus: array armazena a lista de registros
        List<Fornecedor> listaFornecedor = new ArrayList<>();
       
        String sql = "select * from fornecedor_fornecedor where fornecedor_nome like ?";
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setString(1,"%" + f.getNome()+ "%");
            
            ResultSet fornecedor = stmt.executeQuery();
            
            while (fornecedor.next()) {
                // criando o objeto Usuario
                Fornecedor fornecedorSaida = new Fornecedor(
                        fornecedor.getInt(1),
                        fornecedor.getString(2),
                        fornecedor.getString(3),
                        fornecedor.getString(4),
                        fornecedor.getString(5),
                        fornecedor.getString(6));
                // adiciona o usu à lista de usus
                listaFornecedor.add(fornecedorSaida);
            }
            
            fornecedor.close();
        }
        return listaFornecedor;
    }
}

