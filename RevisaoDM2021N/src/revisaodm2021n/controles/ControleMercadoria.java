package revisaodm2021n.controles;

import java.sql.SQLException;
import java.util.List;
import revisaodm2021n.dados.Mercadoria;
import revisaodm2021n.modelos.DaoMercadoria;

public class ControleMercadoria {
    
    static DaoMercadoria daoU;
    
    public ControleMercadoria() throws SQLException, ClassNotFoundException {
        daoU = new DaoMercadoria();
    }

    public Mercadoria inserir(Mercadoria mercadoriaEntrada) throws SQLException {
        return daoU.inserir(mercadoriaEntrada);
    }

    public List<Mercadoria> listar(Mercadoria mercadoriaEntrada) throws SQLException {
        return daoU.listar(mercadoriaEntrada);
    }

    public Mercadoria alterar(Mercadoria mercadoriaEntrada) throws SQLException {
        return daoU.alterar(mercadoriaEntrada);
    }

    public Mercadoria buscar(Mercadoria mercadoriaEntrada) throws SQLException {
        return daoU.buscar(mercadoriaEntrada);
    }

    public Mercadoria excluir(Mercadoria mercadoriaEntrada) throws SQLException {
        return daoU.excluir(mercadoriaEntrada);
    }
    
}
    
