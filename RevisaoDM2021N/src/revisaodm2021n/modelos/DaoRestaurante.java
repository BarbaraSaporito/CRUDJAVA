package revisaodm2021n.modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import revisaodm2021n.dados.Restaurante;
import revisaodm2021n.util.ConexaoDb;

public class DaoRestaurante {
   
    // variavel que armazena a conexão
    private final Connection c;
   
    // construtor da classe DaoUsuario
    public DaoRestaurante() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDb().getConnection();
    }
   
    public Restaurante buscar (Restaurante r) throws SQLException {
        String sql = "select * from res_restaurante WHERE res_id = ?";
        Restaurante retorno;
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1,r.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            retorno = null;
            while (rs.next()) {
                // criando o objeto Usuario
                retorno = new Restaurante(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
                // adiciona o usu à lista de pessoa
            }
        }
        c.close();
        return retorno;
    }

    public Restaurante inserir (Restaurante r) throws SQLException {
        String sql = "insert into res_restaurante" + " (res_nome, res_cep, res_endereco, res_bairro, res_telefone)" + " values (?,?,?,?,?)";
   
        // seta os valores
        try ( // prepared statement para inserção
            PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS)) {
            // seta os valores
            stmt.setString(1,r.getNome());
            stmt.setString(2,r.getCep());
            stmt.setString(3,r.getEndereco());
            stmt.setString(4,r.getBairro());
            stmt.setString(5,r.getTelefone());
            // executa
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                int id = rs.getInt(1);
                r.setId(id);
            }
        }
        c.close();
        return r;
    }

    public Restaurante alterar (Restaurante r) throws SQLException {
        String sql = "UPDATE res_restaurante SET res_nome = ?, res_cep = ?, res_endereco = ?, res_bairro = ?, res_telefone = ? WHERE res_id = ?";
        // seta os valores
        // prepared statement para inserção
        try (PreparedStatement stmt = c.prepareStatement(sql)) {
            // seta os valores
            stmt.setString(1,r.getNome());
            stmt.setString(2,r.getCep());
            stmt.setString(3,r.getEndereco());
            stmt.setString(4,r.getBairro());
            stmt.setString(5,r.getTelefone());
            stmt.setInt(6,r.getId());
            
            // executa
            stmt.execute();
        }
        return r;

    }

    public Restaurante excluir (Restaurante r) throws SQLException {
         String sql = "delete from res_restaurante WHERE res_id = ?";
        // seta os valores
        // prepared statement para inserção
        try (PreparedStatement stmt = c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1,r.getId());
            // executa
            stmt.execute();
        }
        c.close();
        return r;
    }

    public List<Restaurante> listar (Restaurante r) throws SQLException {
         // usus: array armazena a lista de registros
        List<Restaurante> listaRestaurante = new ArrayList<>();
       
        String sql = "select * from res_restaurante where res_nome like ?";
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setString(1,"%" + r.getNome()+ "%");
            
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                // criando o objeto Usuario
                Restaurante rSaida = new Restaurante(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
                // adiciona o usu à lista de usus
                listaRestaurante.add(rSaida);
            }
            
            rs.close();
        }
        return listaRestaurante;
    }
}

