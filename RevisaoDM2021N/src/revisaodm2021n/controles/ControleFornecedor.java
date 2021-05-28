package revisaodm2021n.controles;

import java.sql.SQLException;
import java.util.List;
import revisaodm2021n.dados.Fornecedor;
import revisaodm2021n.modelos.DaoFornecedor;

public class ControleFornecedor {
    
    static DaoFornecedor daoU;
    
    public ControleFornecedor() throws SQLException, ClassNotFoundException {
        daoU = new DaoFornecedor();
    }

    public Fornecedor inserir(Fornecedor fornecedorEntrada) throws SQLException {
        return daoU.inserir(fornecedorEntrada);
    }

    public List<Fornecedor> listar(Fornecedor fornecedorEntrada) throws SQLException {
        return daoU.listar(fornecedorEntrada);
    }

    public Fornecedor alterar(Fornecedor fornecedorEntrada) throws SQLException {
        return daoU.alterar(fornecedorEntrada);
    }

    public Fornecedor buscar(Fornecedor fornecedorEntrada) throws SQLException {
        return daoU.buscar(fornecedorEntrada);
    }

    public Fornecedor excluir(Fornecedor fornecedorEntrada) throws SQLException {
        return daoU.excluir(fornecedorEntrada);
    }
    
}
    
