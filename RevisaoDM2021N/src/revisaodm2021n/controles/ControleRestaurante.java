package revisaodm2021n.controles;

import java.sql.SQLException;
import java.util.List;
import revisaodm2021n.dados.Restaurante;
import revisaodm2021n.modelos.DaoRestaurante;

public class ControleRestaurante {
    
    static DaoRestaurante daoU;
    
    public ControleRestaurante() throws SQLException, ClassNotFoundException {
        daoU = new DaoRestaurante();
    }

    public Restaurante inserir(Restaurante rEntrada) throws SQLException {
        return daoU.inserir(rEntrada);
    }

    public List<Restaurante> listar(Restaurante rEntrada) throws SQLException {
        return daoU.listar(rEntrada);
    }

    public Restaurante alterar(Restaurante rEntrada) throws SQLException {
        return daoU.alterar(rEntrada);
    }

    public Restaurante buscar(Restaurante rEntrada) throws SQLException {
        return daoU.buscar(rEntrada);
    }

    public Restaurante excluir(Restaurante rEntrada) throws SQLException {
        return daoU.excluir(rEntrada);
    }
    
}
    
