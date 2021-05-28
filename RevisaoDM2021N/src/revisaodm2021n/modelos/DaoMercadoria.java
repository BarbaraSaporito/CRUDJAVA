package revisaodm2021n.modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import revisaodm2021n.dados.Mercadoria;
import revisaodm2021n.util.ConexaoDb;

public class DaoMercadoria {
   
    // variavel que armazena a conexão
    private final Connection c;
   
    // construtof da classe DaoUsuario
    public DaoMercadoria()throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDb().getConnection();
    }
   
    public Mercadoria buscar (Mercadoria m) throws SQLException {
        String sql = "select * from mercadoria_mercadoria WHERE mercadoria_id = ?";
        Mercadoria retorno;
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1,m.getId());
            // executa
            ResultSet mercadoria = stmt.executeQuery();
            retorno = null;
            while (mercadoria.next()) {
                // criando o objeto Usuario
                retorno = new Mercadoria(
                        mercadoria.getInt(1),
                        mercadoria.getString(2),
                        mercadoria.getString(3),
                        mercadoria.getString(4),
                        mercadoria.getString(5),
                        mercadoria.getString(6),
                        mercadoria.getString(7));
                
                // adiciona o usu à lista de pessoa
            }
        }
        c.close();
        return retorno;
    }

    public Mercadoria inserir (Mercadoria m) throws SQLException {
        String sql = "insert into mercadoria_mercadoria" + " (mercadoria_nome,  mercadoria_data_compra, mercadoria_validade, mercadoria_marca, id_restaurante, id_fornecedor)" + " values (?,?,?,?,?,?)";
   
        // seta os valores
        try ( // prepared statement para inserção
            PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS)) {
            // seta os valores
            stmt.setString(1,m.getNome());
            stmt.setString(2,m.getData_compra());
            stmt.setString(3,m.getValidade());
            stmt.setString(4,m.getMarca());
            stmt.setString(5,m.getId_restaurante());
            stmt.setString(6,m.getId_fornecedor());
            
            // executa
            stmt.executeUpdate();
            ResultSet mercadoria = stmt.getGeneratedKeys();
            if (mercadoria.next()) {
                int id = mercadoria.getInt(1);
                m.setId(id);
            }
        }
        c.close();
        return m;
    }

    public Mercadoria alterar (Mercadoria m) throws SQLException {
        String sql = "UPDATE mercadoria_mercadoria SET mercadoria_nome = ?, mercadoria_data_compra = ?, mercadoria_validade = ?, mercadoria_marca = ?, id_restaurante = ?, id_fornecedor = ? WHERE mercadoria_id = ?";
        // seta os valores
        // prepared statement para inserção
        try (PreparedStatement stmt = c.prepareStatement(sql)) {
            // seta os valores
            stmt.setString(1,m.getNome());
            stmt.setString(2,m.getData_compra());
            stmt.setString(3,m.getValidade());
            stmt.setString(4,m.getMarca());
            stmt.setString(5,m.getId_restaurante());
            stmt.setString(6,m.getId_fornecedor());
            stmt.setInt(7,m.getId());
            
            // executa
            stmt.execute();
        }
        return m;

    }

    public Mercadoria excluir (Mercadoria m) throws SQLException {
         String sql = "delete from mercadoria_mercadoria WHERE mercadoria_id = ?";
        // seta os valores
        // prepared statement para inserção
        try (PreparedStatement stmt = c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1,m.getId());
            // executa
            stmt.execute();
        }
        c.close();
        return m;
    }

    public List<Mercadoria> listar (Mercadoria m) throws SQLException {
         // usus: array armazena a lista de registros
        List<Mercadoria> listaMercadoria = new ArrayList<>();
       
        String sql = "select * from mercadoria_mercadoria where mercadoria_nome like ?";
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setString(1,"%" + m.getNome()+ "%");
            
            ResultSet mercadoria = stmt.executeQuery();
            
            while (mercadoria.next()) {
                // criando o objeto Usuario
                Mercadoria mercadoriaSaida = new Mercadoria(
                        mercadoria.getInt(1),
                        mercadoria.getString(2),
                        mercadoria.getString(3),
                        mercadoria.getString(4),
                        mercadoria.getString(5),
                        mercadoria.getString(6),
                        mercadoria.getString(7));
                
                // adiciona o usu à lista de usus
                listaMercadoria.add(mercadoriaSaida);
            }
            
            mercadoria.close();
        }
        return listaMercadoria;
    }
}



